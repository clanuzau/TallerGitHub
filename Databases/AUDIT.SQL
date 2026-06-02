--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       AUDIT
-- DESCRIPCION:              Generated table for AUDIT.
-- Objetivo:                 Store operational data for AUDIT.
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
-- Program Name:             AUDIT

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE AUDIT
(
    codigo_banco FOR COLUMN AUDIT01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_sucursal FOR COLUMN AUDIT02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_cajero FOR COLUMN AUDIT03 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_moneda FOR COLUMN AUDIT04 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    referencia FOR COLUMN AUDIT05 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    fecha_apertura FOR COLUMN AUDIT06 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_ultima_transaccion FOR COLUMN AUDIT07 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    saldo_actual FOR COLUMN AUDIT08 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_disponible FOR COLUMN AUDIT09 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    limite_sobregiro FOR COLUMN AUDIT10 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    estado_cuenta FOR COLUMN AUDIT11 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN AUDIT12 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN AUDIT13 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN AUDIT14 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN AUDIT15 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN AUDIT16 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN AUDIT17 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN AUDIT18 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT AUDIT_PK PRIMARY KEY (
        codigo_banco,
        codigo_sucursal,
        codigo_cajero,
        codigo_moneda,
        referencia
    )
)
RCDFMT RAUDIT;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE AUDIT IS 'Generated table for AUDIT.';

LABEL ON TABLE AUDIT IS 'AUDIT table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN AUDIT
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN AUDIT
    (codigo_sucursal IS 'Code Branch field.');
COMMENT ON COLUMN AUDIT
    (codigo_cajero IS 'Code Teller field.');
COMMENT ON COLUMN AUDIT
    (codigo_moneda IS 'Code Currency field.');
COMMENT ON COLUMN AUDIT
    (referencia IS 'Reference field.');
COMMENT ON COLUMN AUDIT
    (fecha_apertura IS 'Date Apertura field.');
COMMENT ON COLUMN AUDIT
    (fecha_ultima_transaccion IS 'Date Ultima Transaction field.');
COMMENT ON COLUMN AUDIT
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN AUDIT
    (saldo_disponible IS 'Balance Disponible field.');
COMMENT ON COLUMN AUDIT
    (limite_sobregiro IS 'Limite Sobregiro field.');
COMMENT ON COLUMN AUDIT
    (estado_cuenta IS 'Status Account field.');
COMMENT ON COLUMN AUDIT
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN AUDIT
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN AUDIT
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN AUDIT
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN AUDIT
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN AUDIT
    (created_at IS 'Created At field.');
COMMENT ON COLUMN AUDIT
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN AUDIT (
    codigo_banco IS 'Code Bank',
    codigo_sucursal IS 'Code Branch',
    codigo_cajero IS 'Code Teller',
    codigo_moneda IS 'Code Currency',
    referencia IS 'Reference',
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

LABEL ON COLUMN AUDIT (
    codigo_banco TEXT IS 'Code Bank value for the record',
    codigo_sucursal TEXT IS 'Code Branch value for the record',
    codigo_cajero TEXT IS 'Code Teller value for the record',
    codigo_moneda TEXT IS 'Code Currency value for the record',
    referencia TEXT IS 'Reference value for the record',
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
