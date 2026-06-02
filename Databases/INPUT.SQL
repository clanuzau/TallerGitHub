--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       INPUT
-- DESCRIPCION:              Generated table for INPUT.
-- Objetivo:                 Store operational data for INPUT.
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
-- Program Name:             INPUT

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE INPUT
(
    numero_del_lote FOR COLUMN INPUT01 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    secuencia_dentro_del_lote FOR COLUMN INPUT02 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    descripcion_cuenta FOR COLUMN INPUT03 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    naturaleza_cuenta FOR COLUMN INPUT04 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    nivel_cuenta FOR COLUMN INPUT05 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    saldo_actual FOR COLUMN INPUT06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    fecha_proceso_sistema FOR COLUMN INPUT07 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    observaciones FOR COLUMN INPUT08 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN INPUT09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN INPUT10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN INPUT11 INTEGER
        NOT NULL WITH DEFAULT 0,
    estado_registro FOR COLUMN INPUT12 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN INPUT13 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN INPUT14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT INPUT_PK PRIMARY KEY (
        numero_del_lote,
        secuencia_dentro_del_lote
    )
)
RCDFMT RINPUT;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE INPUT IS 'Generated table for INPUT.';

LABEL ON TABLE INPUT IS 'INPUT table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN INPUT
    (numero_del_lote IS 'Number Del Lote field.');
COMMENT ON COLUMN INPUT
    (secuencia_dentro_del_lote IS 'Sequence Dentro Del Lote field.');
COMMENT ON COLUMN INPUT
    (descripcion_cuenta IS 'Description Account field.');
COMMENT ON COLUMN INPUT
    (naturaleza_cuenta IS 'Naturaleza Account field.');
COMMENT ON COLUMN INPUT
    (nivel_cuenta IS 'Level Account field.');
COMMENT ON COLUMN INPUT
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN INPUT
    (fecha_proceso_sistema IS 'Date Process Sistema field.');
COMMENT ON COLUMN INPUT
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN INPUT
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN INPUT
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN INPUT
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN INPUT
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN INPUT
    (created_at IS 'Created At field.');
COMMENT ON COLUMN INPUT
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN INPUT (
    numero_del_lote IS 'Number Del Lote',
    secuencia_dentro_del_lote IS 'Sequence Dentro Del Lote',
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

LABEL ON COLUMN INPUT (
    numero_del_lote TEXT IS 'Number Del Lote value for the record',
    secuencia_dentro_del_lote TEXT IS 'Sequence Dentro Del Lote value for the',
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
