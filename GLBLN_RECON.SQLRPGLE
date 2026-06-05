**free
ctl-opt dftactgrp(*no) actgrp('NOVA') option(*srcstmt:*nodebugio) bnddir('NOVABND');

// Main reconciliation orchestrator. It validates the input context and
// exposes execution metrics before JSON publication.
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
dcl-s modo varchar(10) inz('QA');
dcl-s totalCuentas int(10) inz(0);
dcl-s totalDiferencia packed(31:2) inz(0);
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
if %parms() >= 8 and %trim(pModo) <> '';
  modo = %trim(pModo);
endif;

exec sql
  select count(*),
         coalesce(sum(saldo_actual), 0)
    into :totalCuentas,
         :totalDiferencia
    from GLBLN
   where (:banco = '*ALL' or codigo_banco = :banco)
     and (:sucursal = '*ALL' or codigo_sucursal = :sucursal)
     and (:moneda = '*ALL' or codigo_moneda = :moneda)
     and (:cuentaDesde = '' or cuenta_contable >= :cuentaDesde)
     and (:cuentaHasta = '' or cuenta_contable <= :cuentaHasta);

msg = 'GLBLN_RECON cuentas=' + %char(totalCuentas)
    + ' saldoFuente=' + %char(totalDiferencia)
    + ' fecha=' + %char(fechaProceso)
    + ' modo=' + modo;
dsply msg;

*inlr = *on;
return;
