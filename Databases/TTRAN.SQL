--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       TTRAN
-- DESCRIPCION:              Generated table for TTRAN.
-- Objetivo:                 Store operational data for TTRAN.
-- Tipo de Tabla:            Operational
-- Origen de los Datos:      Functional system process
-- Permanencia de Datos:     Permanent
-- Uso de los datos:         Lookup, validation, and operation
-- Restricciones:            Primary key defined by source model

--=====================================================================
-- AUTHORSHIP AND CONTEXT BLOCK
--=====================================================================
-- Hecho por:                Cesar Lanuza
-- Equipo:                   GitHub Workshop for IBM i
-- Fecha:                    2026-06-02
-- Proyecto:                 GitHub Workshop for IBM i
-- Program Name:             TTRAN

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE TTRAN
(
    id_transaccion_dia FOR COLUMN TTRAN01 BIGINT
        NOT NULL WITH DEFAULT 0,
    numero_registro_relativo FOR COLUMN TTRAN02 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    codigo_banco FOR COLUMN TTRAN03 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_sucursal FOR COLUMN TTRAN04 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_moneda FOR COLUMN TTRAN05 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    cuenta_contable FOR COLUMN TTRAN06 VARCHAR(24)
        NOT NULL WITH DEFAULT '',
    numero_cuenta FOR COLUMN TTRAN07 VARCHAR(24)
        NOT NULL WITH DEFAULT '',
    id_cliente FOR COLUMN TTRAN08 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    fecha FOR COLUMN TTRAN09 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_valor FOR COLUMN TTRAN10 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    hora_operacion FOR COLUMN TTRAN11 TIME
        NOT NULL WITH DEFAULT CURRENT_TIME,
    tipo_movimiento FOR COLUMN TTRAN12 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    debito_credito FOR COLUMN TTRAN13 CHAR(1)
        NOT NULL WITH DEFAULT '',
    monto FOR COLUMN TTRAN14 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_anterior FOR COLUMN TTRAN15 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_posterior FOR COLUMN TTRAN16 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    canal_origen FOR COLUMN TTRAN17 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    terminal_origen FOR COLUMN TTRAN18 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    referencia_externa FOR COLUMN TTRAN19 VARCHAR(40)
        NOT NULL WITH DEFAULT '',
    estado_transaccion FOR COLUMN TTRAN20 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN TTRAN21 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN TTRAN22 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN TTRAN23 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN TTRAN24 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN TTRAN25 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN TTRAN26 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN TTRAN27 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT TTRAN_PK PRIMARY KEY (
        id_transaccion_dia,
        codigo_banco,
        codigo_sucursal,
        codigo_moneda,
        cuenta_contable,
        numero_cuenta,
        fecha
    )
)
RCDFMT RTTRAN;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE TTRAN IS 'Generated table for TTRAN.';

LABEL ON TABLE TTRAN IS 'TTRAN table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN TTRAN
    (id_transaccion_dia IS 'Id Transaction Day field.');
COMMENT ON COLUMN TTRAN
    (numero_registro_relativo IS 'Number Record Relative field.');
COMMENT ON COLUMN TTRAN
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN TTRAN
    (codigo_sucursal IS 'Code Branch field.');
COMMENT ON COLUMN TTRAN
    (codigo_moneda IS 'Code Currency field.');
COMMENT ON COLUMN TTRAN
    (cuenta_contable IS 'Account Ledger field.');
COMMENT ON COLUMN TTRAN
    (numero_cuenta IS 'Number Account field.');
COMMENT ON COLUMN TTRAN
    (id_cliente IS 'Id Customer field.');
COMMENT ON COLUMN TTRAN
    (fecha IS 'Date field.');
COMMENT ON COLUMN TTRAN
    (fecha_valor IS 'Date Value field.');
COMMENT ON COLUMN TTRAN
    (hora_operacion IS 'Time Operation field.');
COMMENT ON COLUMN TTRAN
    (tipo_movimiento IS 'Type Movement field.');
COMMENT ON COLUMN TTRAN
    (debito_credito IS 'Debit Credit field.');
COMMENT ON COLUMN TTRAN
    (monto IS 'Amount field.');
COMMENT ON COLUMN TTRAN
    (saldo_anterior IS 'Balance Previous field.');
COMMENT ON COLUMN TTRAN
    (saldo_posterior IS 'Balance Next field.');
COMMENT ON COLUMN TTRAN
    (canal_origen IS 'Channel Source field.');
COMMENT ON COLUMN TTRAN
    (terminal_origen IS 'Terminal Source field.');
COMMENT ON COLUMN TTRAN
    (referencia_externa IS 'Reference External field.');
COMMENT ON COLUMN TTRAN
    (estado_transaccion IS 'Status Transaction field.');
COMMENT ON COLUMN TTRAN
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN TTRAN
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN TTRAN
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN TTRAN
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN TTRAN
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN TTRAN
    (created_at IS 'Created At field.');
COMMENT ON COLUMN TTRAN
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN TTRAN (
    id_transaccion_dia IS 'Id Transaction Day',
    numero_registro_relativo IS 'Number Record Relative',
    codigo_banco IS 'Code Bank',
    codigo_sucursal IS 'Code Branch',
    codigo_moneda IS 'Code Currency',
    cuenta_contable IS 'Account Ledger',
    numero_cuenta IS 'Number Account',
    id_cliente IS 'Id Customer',
    fecha IS 'Date',
    fecha_valor IS 'Date Value',
    hora_operacion IS 'Time Operation',
    tipo_movimiento IS 'Type Movement',
    debito_credito IS 'Debit Credit',
    monto IS 'Amount',
    saldo_anterior IS 'Balance Previous',
    saldo_posterior IS 'Balance Next',
    canal_origen IS 'Channel Source',
    terminal_origen IS 'Terminal Source',
    referencia_externa IS 'Reference External',
    estado_transaccion IS 'Status Transaction',
    usuario_creacion IS 'User Creation',
    usuario_actualizacion IS 'User Update',
    version_registro IS 'Version Record',
    observaciones IS 'Notes',
    estado_registro IS 'Status Record',
    created_at IS 'Created At',
    updated_at IS 'Updated At'
);

--=====================================================================
-- COLUMN TEXT LABELS
--=====================================================================

LABEL ON COLUMN TTRAN (
    id_transaccion_dia TEXT IS 'Id Transaction Day value for the record',
    numero_registro_relativo TEXT IS 'Number Record Relative value for the rec',
    codigo_banco TEXT IS 'Code Bank value for the record',
    codigo_sucursal TEXT IS 'Code Branch value for the record',
    codigo_moneda TEXT IS 'Code Currency value for the record',
    cuenta_contable TEXT IS 'Account Ledger value for the record',
    numero_cuenta TEXT IS 'Number Account value for the record',
    id_cliente TEXT IS 'Id Customer value for the record',
    fecha TEXT IS 'Date value for the record',
    fecha_valor TEXT IS 'Date Value value for the record',
    hora_operacion TEXT IS 'Time Operation value for the record',
    tipo_movimiento TEXT IS 'Type Movement value for the record',
    debito_credito TEXT IS 'Debit Credit value for the record',
    monto TEXT IS 'Amount value for the record',
    saldo_anterior TEXT IS 'Balance Previous value for the record',
    saldo_posterior TEXT IS 'Balance Next value for the record',
    canal_origen TEXT IS 'Channel Source value for the record',
    terminal_origen TEXT IS 'Terminal Source value for the record',
    referencia_externa TEXT IS 'Reference External value for the record',
    estado_transaccion TEXT IS 'Status Transaction value for the record',
    usuario_creacion TEXT IS 'User Creation value for the record',
    usuario_actualizacion TEXT IS 'User Update value for the record',
    version_registro TEXT IS 'Version Record value for the record',
    observaciones TEXT IS 'Notes value for the record',
    estado_registro TEXT IS 'Status Record value for the record',
    created_at TEXT IS 'Created At value for the record',
    updated_at TEXT IS 'Updated At value for the record'
);
