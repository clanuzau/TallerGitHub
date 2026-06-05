**free
ctl-opt dftactgrp(*no) actgrp('NOVA') option(*srcstmt:*nodebugio) bnddir('NOVABND');

// JSON publisher for the reconciliation contract required by the workshop.
dcl-pi *n;
  pBanco char(20) const options(*nopass);
  pSucursal char(20) const options(*nopass);
  pMoneda char(20) const options(*nopass);
  pCuentaDesde char(24) const options(*nopass);
  pCuentaHasta char(24) const options(*nopass);
  pFechaProceso char(10) const options(*nopass);
  pIfsPath char(256) const options(*nopass);
  pModo char(10) const options(*nopass);
end-pi;

dcl-s banco varchar(20) inz('*ALL');
dcl-s sucursal varchar(20) inz('*ALL');
dcl-s moneda varchar(20) inz('*ALL');
dcl-s cuentaDesde varchar(24) inz('');
dcl-s cuentaHasta varchar(24) inz('');
dcl-s fechaProceso date inz(*sys);
dcl-s ifsPath varchar(512) inz('/home/LANUZACX/NovaSorc/glbln_recon.json');
dcl-s modo varchar(10) inz('QA');
dcl-s jsonDoc varchar(32000);
dcl-s msg varchar(256);

exec sql
  set option commit = *none, datfmt = *iso, timfmt = *iso, naming = *sql;

if %parms() >= 1;
  banco = %trim(pBanco);
endif;
if %parms() >= 2;
  sucursal = %trim(pSucursal);
endif;
if %parms() >= 3;
  moneda = %trim(pMoneda);
endif;
if %parms() >= 4;
  cuentaDesde = %trim(pCuentaDesde);
endif;
if %parms() >= 5;
  cuentaHasta = %trim(pCuentaHasta);
endif;
if %parms() >= 6 and %trim(pFechaProceso) <> '';
  fechaProceso = %date(%trim(pFechaProceso): *iso);
endif;
if %parms() >= 7 and %trim(pIfsPath) <> '';
  ifsPath = %trim(pIfsPath);
endif;
if %parms() >= 8 and %trim(pModo) <> '';
  modo = %trim(pModo);
endif;

exec sql
  values json_object(
    key 'metadata' value json_object(
      key 'versionEstructura' value '1.0.0',
      key 'sistemaOrigen' value 'IBS-IBM-i',
      key 'proceso' value 'CONCILIACION_GLBLN',
      key 'ambiente' value :modo,
      key 'charset' value 'UTF-8'
    ),
    key 'ejecucion' value json_object(
      key 'idEjecucion' value varchar_format(current timestamp, 'YYYYMMDD_HH24MISS'),
      key 'fechaProceso' value char(:fechaProceso),
      key 'fechaHoraInicio' value varchar_format(current timestamp, 'YYYY-MM-DD"T"HH24:MI:SS'),
      key 'fechaHoraFin' value varchar_format(current timestamp, 'YYYY-MM-DD"T"HH24:MI:SS'),
      key 'usuario' value user,
      key 'programa' value 'JSON_OUTPUT',
      key 'libreria' value current schema,
      key 'estadoEjecucion' value 'FINALIZADO'
    ),
    key 'contexto' value json_object(
      key 'banco' value :banco,
      key 'sucursal' value :sucursal,
      key 'moneda' value :moneda,
      key 'periodo' value json_object(
        key 'anio' value year(:fechaProceso),
        key 'mes' value month(:fechaProceso),
        key 'fechaCorte' value char(:fechaProceso)
      ),
      key 'rangoCuentas' value json_object(
        key 'desde' value :cuentaDesde,
        key 'hasta' value :cuentaHasta
      )
    ),
    key 'cuentas' value coalesce((
      select json_arrayagg(
        json_object(
          key 'cuentaMayor' value json_object(
            key 'codigoBanco' value codigo_banco,
            key 'codigoSucursal' value codigo_sucursal,
            key 'codigoMoneda' value codigo_moneda,
            key 'cuentaContable' value cuenta_contable,
            key 'descripcionCuenta' value descripcion_cuenta,
            key 'naturaleza' value naturaleza_cuenta,
            key 'nivelCuenta' value nivel_cuenta,
            key 'centroCosto' value ''
          ),
          key 'saldos' value json_object(
            key 'saldoInicial' value decimal(0, 18, 2),
            key 'debitosPeriodo' value decimal(0, 18, 2),
            key 'creditosPeriodo' value decimal(0, 18, 2),
            key 'saldoFinalCalculado' value saldo_actual,
            key 'saldoFinalFuente' value saldo_actual,
            key 'saldoFinalConciliado' value saldo_actual
          ),
          key 'resumenMovimientos' value json_object(
            key 'cantidadMovimientos' value 0,
            key 'primerMovimiento' value cast(null as varchar(26)),
            key 'ultimoMovimiento' value cast(null as varchar(26))
          ),
          key 'partidasConciliatorias' value json_array(),
          key 'diferencias' value json_object(
            key 'diferenciaNeta' value decimal(0, 18, 2),
            key 'diferenciaAbsoluta' value decimal(0, 18, 2),
            key 'toleranciaPermitida' value decimal(1, 18, 2),
            key 'excedeTolerancia' value 'false' format json,
            key 'motivoPrincipal' value 'Sin diferencia'
          ),
          key 'estadoConciliacion' value json_object(
            key 'codigo' value 'CONCILIADA',
            key 'descripcion' value 'Conciliada sin diferencia',
            key 'severidad' value 'BAJA',
            key 'requiereRevision' value 'false' format json
          ),
          key 'trazabilidad' value json_object(
            key 'hashCuenta' value codigo_banco concat '-' concat codigo_sucursal concat '-' concat codigo_moneda concat '-' concat cuenta_contable,
            key 'registrosFuente' value json_object(
              key 'glbln' value 1,
              key 'trans' value 0,
              key 'trdsc' value 0,
              key 'ttran' value 0
            )
          )
        )
      )
      from GLBLN
      where (:banco = '*ALL' or codigo_banco = :banco)
        and (:sucursal = '*ALL' or codigo_sucursal = :sucursal)
        and (:moneda = '*ALL' or codigo_moneda = :moneda)
        and (:cuentaDesde = '' or cuenta_contable >= :cuentaDesde)
        and (:cuentaHasta = '' or cuenta_contable <= :cuentaHasta)
    ), json_array()),
    key 'controlTotales' value json_object(
      key 'totalCuentasProcesadas' value (
        select count(*) from GLBLN
        where (:banco = '*ALL' or codigo_banco = :banco)
          and (:sucursal = '*ALL' or codigo_sucursal = :sucursal)
          and (:moneda = '*ALL' or codigo_moneda = :moneda)
          and (:cuentaDesde = '' or cuenta_contable >= :cuentaDesde)
          and (:cuentaHasta = '' or cuenta_contable <= :cuentaHasta)
      ),
      key 'totalCuentasConciliadas' value (
        select count(*) from GLBLN
        where (:banco = '*ALL' or codigo_banco = :banco)
          and (:sucursal = '*ALL' or codigo_sucursal = :sucursal)
          and (:moneda = '*ALL' or codigo_moneda = :moneda)
          and (:cuentaDesde = '' or cuenta_contable >= :cuentaDesde)
          and (:cuentaHasta = '' or cuenta_contable <= :cuentaHasta)
      ),
      key 'totalCuentasConDiferencia' value 0,
      key 'sumatoriaSaldoFinalFuente' value (
        select coalesce(sum(saldo_actual), 0) from GLBLN
        where (:banco = '*ALL' or codigo_banco = :banco)
          and (:sucursal = '*ALL' or codigo_sucursal = :sucursal)
          and (:moneda = '*ALL' or codigo_moneda = :moneda)
          and (:cuentaDesde = '' or cuenta_contable >= :cuentaDesde)
          and (:cuentaHasta = '' or cuenta_contable <= :cuentaHasta)
      ),
      key 'sumatoriaSaldoFinalConciliado' value (
        select coalesce(sum(saldo_actual), 0) from GLBLN
        where (:banco = '*ALL' or codigo_banco = :banco)
          and (:sucursal = '*ALL' or codigo_sucursal = :sucursal)
          and (:moneda = '*ALL' or codigo_moneda = :moneda)
          and (:cuentaDesde = '' or cuenta_contable >= :cuentaDesde)
          and (:cuentaHasta = '' or cuenta_contable <= :cuentaHasta)
      ),
      key 'sumatoriaDiferenciaNeta' value decimal(0, 18, 2)
    ),
    key 'incidentes' value json_array()
  )
  into :jsonDoc;

exec sql
  call qsys2.ifs_write_utf8(
    path_name => :ifsPath,
    line => :jsonDoc,
    overwrite => 'REPLACE',
    end_of_line => 'NONE'
  );

msg = 'JSON_OUTPUT wrote ' + %trim(ifsPath);
dsply msg;

*inlr = *on;
return;
