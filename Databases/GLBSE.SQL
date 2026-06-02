--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       GLBSE
-- DESCRIPCION:              Generated table for GLBSE.
-- Objetivo:                 Store operational data for GLBSE.
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
-- Program Name:             GLBSE

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE GLBSE
(
    id FOR COLUMN GLBSE01 BIGINT
        NOT NULL WITH DEFAULT 0,
    descripcion_cuenta FOR COLUMN GLBSE02 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    naturaleza_cuenta FOR COLUMN GLBSE03 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    nivel_cuenta FOR COLUMN GLBSE04 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    saldo_actual FOR COLUMN GLBSE05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    fecha_proceso_sistema FOR COLUMN GLBSE06 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    observaciones FOR COLUMN GLBSE07 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN GLBSE08 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN GLBSE09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN GLBSE10 INTEGER
        NOT NULL WITH DEFAULT 0,
    estado_registro FOR COLUMN GLBSE11 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN GLBSE12 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN GLBSE13 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT GLBSE_PK PRIMARY KEY (
        id
    )
)
RCDFMT RGLBSE;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE GLBSE IS 'Generated table for GLBSE.';

LABEL ON TABLE GLBSE IS 'GLBSE table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN GLBSE
    (id IS 'Id field.');
COMMENT ON COLUMN GLBSE
    (descripcion_cuenta IS 'Description Account field.');
COMMENT ON COLUMN GLBSE
    (naturaleza_cuenta IS 'Naturaleza Account field.');
COMMENT ON COLUMN GLBSE
    (nivel_cuenta IS 'Level Account field.');
COMMENT ON COLUMN GLBSE
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN GLBSE
    (fecha_proceso_sistema IS 'Date Process Sistema field.');
COMMENT ON COLUMN GLBSE
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN GLBSE
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN GLBSE
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN GLBSE
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN GLBSE
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN GLBSE
    (created_at IS 'Created At field.');
COMMENT ON COLUMN GLBSE
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN GLBSE (
    id IS 'Id',
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

LABEL ON COLUMN GLBSE (
    id TEXT IS 'Id value for the record',
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
