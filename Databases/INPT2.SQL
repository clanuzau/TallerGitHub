--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       INPT2
-- DESCRIPCION:              Generated table for INPT2.
-- Objetivo:                 Store operational data for INPT2.
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
-- Program Name:             INPT2

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE INPT2
(
    id FOR COLUMN INPT201 BIGINT
        NOT NULL WITH DEFAULT 0,
    descripcion_cuenta FOR COLUMN INPT202 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    naturaleza_cuenta FOR COLUMN INPT203 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    nivel_cuenta FOR COLUMN INPT204 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    saldo_actual FOR COLUMN INPT205 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    fecha_proceso_sistema FOR COLUMN INPT206 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    observaciones FOR COLUMN INPT207 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN INPT208 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN INPT209 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN INPT210 INTEGER
        NOT NULL WITH DEFAULT 0,
    estado_registro FOR COLUMN INPT211 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN INPT212 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN INPT213 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT INPT2_PK PRIMARY KEY (
        id
    )
)
RCDFMT RINPT2;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE INPT2 IS 'Generated table for INPT2.';

LABEL ON TABLE INPT2 IS 'INPT2 table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN INPT2
    (id IS 'Id field.');
COMMENT ON COLUMN INPT2
    (descripcion_cuenta IS 'Description Account field.');
COMMENT ON COLUMN INPT2
    (naturaleza_cuenta IS 'Naturaleza Account field.');
COMMENT ON COLUMN INPT2
    (nivel_cuenta IS 'Level Account field.');
COMMENT ON COLUMN INPT2
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN INPT2
    (fecha_proceso_sistema IS 'Date Process Sistema field.');
COMMENT ON COLUMN INPT2
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN INPT2
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN INPT2
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN INPT2
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN INPT2
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN INPT2
    (created_at IS 'Created At field.');
COMMENT ON COLUMN INPT2
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN INPT2 (
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

LABEL ON COLUMN INPT2 (
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
