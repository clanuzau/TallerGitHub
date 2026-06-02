--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       CNTRLDEV
-- DESCRIPCION:              Generated table for CNTRLDEV.
-- Objetivo:                 Store operational data for CNTRLDEV.
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
-- Program Name:             CNTRLDEV

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE CNTRLDEV
(
    codigo_causal FOR COLUMN CNTRLDEV01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    fecha_apertura FOR COLUMN CNTRLDEV02 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_ultima_transaccion FOR COLUMN CNTRLDEV03 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    saldo_actual FOR COLUMN CNTRLDEV04 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_disponible FOR COLUMN CNTRLDEV05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    limite_sobregiro FOR COLUMN CNTRLDEV06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    estado_cuenta FOR COLUMN CNTRLDEV07 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN CNTRLDEV08 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN CNTRLDEV09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN CNTRLDEV10 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN CNTRLDEV11 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN CNTRLDEV12 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN CNTRLDEV13 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN CNTRLDEV14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT CNTRLDEV_PK PRIMARY KEY (
        codigo_causal
    )
)
RCDFMT RCNTRLDEV;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE CNTRLDEV IS 'Generated table for CNTRLDEV.';

LABEL ON TABLE CNTRLDEV IS 'CNTRLDEV table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN CNTRLDEV
    (codigo_causal IS 'Code Reason field.');
COMMENT ON COLUMN CNTRLDEV
    (fecha_apertura IS 'Date Apertura field.');
COMMENT ON COLUMN CNTRLDEV
    (fecha_ultima_transaccion IS 'Date Ultima Transaction field.');
COMMENT ON COLUMN CNTRLDEV
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN CNTRLDEV
    (saldo_disponible IS 'Balance Disponible field.');
COMMENT ON COLUMN CNTRLDEV
    (limite_sobregiro IS 'Limite Sobregiro field.');
COMMENT ON COLUMN CNTRLDEV
    (estado_cuenta IS 'Status Account field.');
COMMENT ON COLUMN CNTRLDEV
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN CNTRLDEV
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN CNTRLDEV
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN CNTRLDEV
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN CNTRLDEV
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN CNTRLDEV
    (created_at IS 'Created At field.');
COMMENT ON COLUMN CNTRLDEV
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN CNTRLDEV (
    codigo_causal IS 'Code Reason',
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

LABEL ON COLUMN CNTRLDEV (
    codigo_causal TEXT IS 'Code Reason value for the record',
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
