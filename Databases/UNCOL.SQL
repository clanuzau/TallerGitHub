--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       UNCOL
-- DESCRIPCION:              Generated table for UNCOL.
-- Objetivo:                 Store operational data for UNCOL.
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
-- Program Name:             UNCOL

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE UNCOL
(
    codigo_banco FOR COLUMN UNCOL01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_sucursal FOR COLUMN UNCOL02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    numero_cuenta FOR COLUMN UNCOL03 VARCHAR(24)
        NOT NULL WITH DEFAULT '',
    fecha_apertura FOR COLUMN UNCOL04 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_ultima_transaccion FOR COLUMN UNCOL05 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    saldo_actual FOR COLUMN UNCOL06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_disponible FOR COLUMN UNCOL07 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    limite_sobregiro FOR COLUMN UNCOL08 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    estado_cuenta FOR COLUMN UNCOL09 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN UNCOL10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN UNCOL11 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN UNCOL12 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN UNCOL13 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN UNCOL14 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN UNCOL15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN UNCOL16 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT UNCOL_PK PRIMARY KEY (
        codigo_banco,
        codigo_sucursal,
        numero_cuenta
    )
)
RCDFMT RUNCOL;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE UNCOL IS 'Generated table for UNCOL.';

LABEL ON TABLE UNCOL IS 'UNCOL table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN UNCOL
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN UNCOL
    (codigo_sucursal IS 'Code Branch field.');
COMMENT ON COLUMN UNCOL
    (numero_cuenta IS 'Number Account field.');
COMMENT ON COLUMN UNCOL
    (fecha_apertura IS 'Date Apertura field.');
COMMENT ON COLUMN UNCOL
    (fecha_ultima_transaccion IS 'Date Ultima Transaction field.');
COMMENT ON COLUMN UNCOL
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN UNCOL
    (saldo_disponible IS 'Balance Disponible field.');
COMMENT ON COLUMN UNCOL
    (limite_sobregiro IS 'Limite Sobregiro field.');
COMMENT ON COLUMN UNCOL
    (estado_cuenta IS 'Status Account field.');
COMMENT ON COLUMN UNCOL
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN UNCOL
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN UNCOL
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN UNCOL
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN UNCOL
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN UNCOL
    (created_at IS 'Created At field.');
COMMENT ON COLUMN UNCOL
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN UNCOL (
    codigo_banco IS 'Code Bank',
    codigo_sucursal IS 'Code Branch',
    numero_cuenta IS 'Number Account',
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

LABEL ON COLUMN UNCOL (
    codigo_banco TEXT IS 'Code Bank value for the record',
    codigo_sucursal TEXT IS 'Code Branch value for the record',
    numero_cuenta TEXT IS 'Number Account value for the record',
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
