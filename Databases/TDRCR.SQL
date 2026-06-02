--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       TDRCR
-- DESCRIPCION:              Generated table for TDRCR.
-- Objetivo:                 Store operational data for TDRCR.
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
-- Program Name:             TDRCR

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE TDRCR
(
    codigo_de_transaccion FOR COLUMN TDRCR01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    fecha_apertura FOR COLUMN TDRCR02 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_ultima_transaccion FOR COLUMN TDRCR03 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    saldo_actual FOR COLUMN TDRCR04 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_disponible FOR COLUMN TDRCR05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    limite_sobregiro FOR COLUMN TDRCR06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    estado_cuenta FOR COLUMN TDRCR07 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN TDRCR08 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN TDRCR09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN TDRCR10 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN TDRCR11 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN TDRCR12 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN TDRCR13 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN TDRCR14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT TDRCR_PK PRIMARY KEY (
        codigo_de_transaccion
    )
)
RCDFMT RTDRCR;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE TDRCR IS 'Generated table for TDRCR.';

LABEL ON TABLE TDRCR IS 'TDRCR table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN TDRCR
    (codigo_de_transaccion IS 'Code De Transaction field.');
COMMENT ON COLUMN TDRCR
    (fecha_apertura IS 'Date Apertura field.');
COMMENT ON COLUMN TDRCR
    (fecha_ultima_transaccion IS 'Date Ultima Transaction field.');
COMMENT ON COLUMN TDRCR
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN TDRCR
    (saldo_disponible IS 'Balance Disponible field.');
COMMENT ON COLUMN TDRCR
    (limite_sobregiro IS 'Limite Sobregiro field.');
COMMENT ON COLUMN TDRCR
    (estado_cuenta IS 'Status Account field.');
COMMENT ON COLUMN TDRCR
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN TDRCR
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN TDRCR
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN TDRCR
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN TDRCR
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN TDRCR
    (created_at IS 'Created At field.');
COMMENT ON COLUMN TDRCR
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN TDRCR (
    codigo_de_transaccion IS 'Code De Transaction',
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

LABEL ON COLUMN TDRCR (
    codigo_de_transaccion TEXT IS 'Code De Transaction value for the record',
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
