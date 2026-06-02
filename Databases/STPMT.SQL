--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       STPMT
-- DESCRIPCION:              Generated table for STPMT.
-- Objetivo:                 Store operational data for STPMT.
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
-- Program Name:             STPMT

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE STPMT
(
    codigo_banco FOR COLUMN STPMT01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_sucursal FOR COLUMN STPMT02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_moneda FOR COLUMN STPMT03 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    cuenta_contable FOR COLUMN STPMT04 VARCHAR(24)
        NOT NULL WITH DEFAULT '',
    numero_cuenta FOR COLUMN STPMT05 VARCHAR(24)
        NOT NULL WITH DEFAULT '',
    secuencia FOR COLUMN STPMT06 INTEGER
        NOT NULL WITH DEFAULT 0,
    fecha_apertura FOR COLUMN STPMT07 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_ultima_transaccion FOR COLUMN STPMT08 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    saldo_actual FOR COLUMN STPMT09 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_disponible FOR COLUMN STPMT10 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    limite_sobregiro FOR COLUMN STPMT11 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    estado_cuenta FOR COLUMN STPMT12 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN STPMT13 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN STPMT14 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN STPMT15 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN STPMT16 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN STPMT17 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN STPMT18 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN STPMT19 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT STPMT_PK PRIMARY KEY (
        codigo_banco,
        codigo_sucursal,
        codigo_moneda,
        cuenta_contable,
        numero_cuenta,
        secuencia
    )
)
RCDFMT RSTPMT;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE STPMT IS 'Generated table for STPMT.';

LABEL ON TABLE STPMT IS 'STPMT table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN STPMT
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN STPMT
    (codigo_sucursal IS 'Code Branch field.');
COMMENT ON COLUMN STPMT
    (codigo_moneda IS 'Code Currency field.');
COMMENT ON COLUMN STPMT
    (cuenta_contable IS 'Account Ledger field.');
COMMENT ON COLUMN STPMT
    (numero_cuenta IS 'Number Account field.');
COMMENT ON COLUMN STPMT
    (secuencia IS 'Sequence field.');
COMMENT ON COLUMN STPMT
    (fecha_apertura IS 'Date Apertura field.');
COMMENT ON COLUMN STPMT
    (fecha_ultima_transaccion IS 'Date Ultima Transaction field.');
COMMENT ON COLUMN STPMT
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN STPMT
    (saldo_disponible IS 'Balance Disponible field.');
COMMENT ON COLUMN STPMT
    (limite_sobregiro IS 'Limite Sobregiro field.');
COMMENT ON COLUMN STPMT
    (estado_cuenta IS 'Status Account field.');
COMMENT ON COLUMN STPMT
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN STPMT
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN STPMT
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN STPMT
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN STPMT
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN STPMT
    (created_at IS 'Created At field.');
COMMENT ON COLUMN STPMT
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN STPMT (
    codigo_banco IS 'Code Bank',
    codigo_sucursal IS 'Code Branch',
    codigo_moneda IS 'Code Currency',
    cuenta_contable IS 'Account Ledger',
    numero_cuenta IS 'Number Account',
    secuencia IS 'Sequence',
    fecha_apertura IS 'Date Apertura',
    fecha_ultima_transaccion IS 'Date Ultima Transaction',
    saldo_actual IS 'Balance Actual',
    saldo_disponible IS 'Balance Disponible',
    limite_sobregiro IS 'Limite Sobregiro',
    estado_cuenta IS 'Status Account',
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

LABEL ON COLUMN STPMT (
    codigo_banco TEXT IS 'Code Bank value for the record',
    codigo_sucursal TEXT IS 'Code Branch value for the record',
    codigo_moneda TEXT IS 'Code Currency value for the record',
    cuenta_contable TEXT IS 'Account Ledger value for the record',
    numero_cuenta TEXT IS 'Number Account value for the record',
    secuencia TEXT IS 'Sequence value for the record',
    fecha_apertura TEXT IS 'Date Apertura value for the record',
    fecha_ultima_transaccion TEXT IS 'Date Ultima Transaction value for the re',
    saldo_actual TEXT IS 'Balance Actual value for the record',
    saldo_disponible TEXT IS 'Balance Disponible value for the record',
    limite_sobregiro TEXT IS 'Limite Sobregiro value for the record',
    estado_cuenta TEXT IS 'Status Account value for the record',
    usuario_creacion TEXT IS 'User Creation value for the record',
    usuario_actualizacion TEXT IS 'User Update value for the record',
    version_registro TEXT IS 'Version Record value for the record',
    observaciones TEXT IS 'Notes value for the record',
    estado_registro TEXT IS 'Status Record value for the record',
    created_at TEXT IS 'Created At value for the record',
    updated_at TEXT IS 'Updated At value for the record'
);
