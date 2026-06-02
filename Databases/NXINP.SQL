--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       NXINP
-- DESCRIPCION:              Generated table for NXINP.
-- Objetivo:                 Store operational data for NXINP.
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
-- Program Name:             NXINP

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE NXINP
(
    numero_batch FOR COLUMN NXINP01 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    secuencia FOR COLUMN NXINP02 INTEGER
        NOT NULL WITH DEFAULT 0,
    descripcion_cuenta FOR COLUMN NXINP03 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    naturaleza_cuenta FOR COLUMN NXINP04 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    nivel_cuenta FOR COLUMN NXINP05 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    saldo_actual FOR COLUMN NXINP06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    fecha_proceso_sistema FOR COLUMN NXINP07 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    observaciones FOR COLUMN NXINP08 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN NXINP09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN NXINP10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN NXINP11 INTEGER
        NOT NULL WITH DEFAULT 0,
    estado_registro FOR COLUMN NXINP12 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN NXINP13 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN NXINP14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT NXINP_PK PRIMARY KEY (
        numero_batch,
        secuencia
    )
)
RCDFMT RNXINP;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE NXINP IS 'Generated table for NXINP.';

LABEL ON TABLE NXINP IS 'NXINP table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN NXINP
    (numero_batch IS 'Number Batch field.');
COMMENT ON COLUMN NXINP
    (secuencia IS 'Sequence field.');
COMMENT ON COLUMN NXINP
    (descripcion_cuenta IS 'Description Account field.');
COMMENT ON COLUMN NXINP
    (naturaleza_cuenta IS 'Naturaleza Account field.');
COMMENT ON COLUMN NXINP
    (nivel_cuenta IS 'Level Account field.');
COMMENT ON COLUMN NXINP
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN NXINP
    (fecha_proceso_sistema IS 'Date Process Sistema field.');
COMMENT ON COLUMN NXINP
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN NXINP
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN NXINP
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN NXINP
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN NXINP
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN NXINP
    (created_at IS 'Created At field.');
COMMENT ON COLUMN NXINP
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN NXINP (
    numero_batch IS 'Number Batch',
    secuencia IS 'Sequence',
    descripcion_cuenta IS 'Description Account',
    naturaleza_cuenta IS 'Naturaleza Account',
    nivel_cuenta IS 'Level Account',
    saldo_actual IS 'Balance Actual',
    fecha_proceso_sistema IS 'Date Process Sistema',
    observaciones IS 'Notes',
    usuario_creacion IS 'User Creation',
    usuario_actualizacion IS 'User Update',
    version_registro IS 'Version Record',
    estado_registro IS 'Status Record',
    created_at IS 'Created At',
    updated_at IS 'Updated At'
);

--=====================================================================
-- COLUMN TEXT LABELS
--=====================================================================

LABEL ON COLUMN NXINP (
    numero_batch TEXT IS 'Number Batch value for the record',
    secuencia TEXT IS 'Sequence value for the record',
    descripcion_cuenta TEXT IS 'Description Account value for the record',
    naturaleza_cuenta TEXT IS 'Naturaleza Account value for the record',
    nivel_cuenta TEXT IS 'Level Account value for the record',
    saldo_actual TEXT IS 'Balance Actual value for the record',
    fecha_proceso_sistema TEXT IS 'Date Process Sistema value for the record',
    observaciones TEXT IS 'Notes value for the record',
    usuario_creacion TEXT IS 'User Creation value for the record',
    usuario_actualizacion TEXT IS 'User Update value for the record',
    version_registro TEXT IS 'Version Record value for the record',
    estado_registro TEXT IS 'Status Record value for the record',
    created_at TEXT IS 'Created At value for the record',
    updated_at TEXT IS 'Updated At value for the record'
);
