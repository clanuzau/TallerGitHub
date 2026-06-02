--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       ACMST
-- DESCRIPCION:              Generated table for ACMST.
-- Objetivo:                 Store operational data for ACMST.
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
-- Program Name:             ACMST

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE ACMST
(
    id FOR COLUMN ACMST01 BIGINT
        NOT NULL WITH DEFAULT 0,
    fecha_apertura FOR COLUMN ACMST02 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_ultima_transaccion FOR COLUMN ACMST03 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    saldo_actual FOR COLUMN ACMST04 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_disponible FOR COLUMN ACMST05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    limite_sobregiro FOR COLUMN ACMST06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    estado_cuenta FOR COLUMN ACMST07 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN ACMST08 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN ACMST09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN ACMST10 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN ACMST11 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN ACMST12 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN ACMST13 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN ACMST14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT ACMST_PK PRIMARY KEY (
        id
    )
)
RCDFMT RACMST;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE ACMST IS 'Generated table for ACMST.';

LABEL ON TABLE ACMST IS 'ACMST table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN ACMST
    (id IS 'Id field.');
COMMENT ON COLUMN ACMST
    (fecha_apertura IS 'Date Apertura field.');
COMMENT ON COLUMN ACMST
    (fecha_ultima_transaccion IS 'Date Ultima Transaction field.');
COMMENT ON COLUMN ACMST
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN ACMST
    (saldo_disponible IS 'Balance Disponible field.');
COMMENT ON COLUMN ACMST
    (limite_sobregiro IS 'Limite Sobregiro field.');
COMMENT ON COLUMN ACMST
    (estado_cuenta IS 'Status Account field.');
COMMENT ON COLUMN ACMST
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN ACMST
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN ACMST
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN ACMST
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN ACMST
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN ACMST
    (created_at IS 'Created At field.');
COMMENT ON COLUMN ACMST
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN ACMST (
    id IS 'Id',
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

LABEL ON COLUMN ACMST (
    id TEXT IS 'Id value for the record',
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
