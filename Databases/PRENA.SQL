--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       PRENA
-- DESCRIPCION:              Generated table for PRENA.
-- Objetivo:                 Store operational data for PRENA.
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
-- Program Name:             PRENA

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE PRENA
(
    nombre_programa FOR COLUMN PRENA01 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    descripcion FOR COLUMN PRENA02 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    valor_texto FOR COLUMN PRENA03 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    valor_numerico FOR COLUMN PRENA04 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    vigencia_desde FOR COLUMN PRENA05 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    vigencia_hasta FOR COLUMN PRENA06 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    orden_visualizacion FOR COLUMN PRENA07 INTEGER
        NOT NULL WITH DEFAULT 0,
    usuario_creacion FOR COLUMN PRENA08 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN PRENA09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN PRENA10 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN PRENA11 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN PRENA12 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN PRENA13 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN PRENA14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT PRENA_PK PRIMARY KEY (
        nombre_programa
    )
)
RCDFMT RPRENA;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE PRENA IS 'Generated table for PRENA.';

LABEL ON TABLE PRENA IS 'PRENA table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN PRENA
    (nombre_programa IS 'Nombre Program field.');
COMMENT ON COLUMN PRENA
    (descripcion IS 'Description field.');
COMMENT ON COLUMN PRENA
    (valor_texto IS 'Value Text field.');
COMMENT ON COLUMN PRENA
    (valor_numerico IS 'Value Numeric field.');
COMMENT ON COLUMN PRENA
    (vigencia_desde IS 'Effective Start field.');
COMMENT ON COLUMN PRENA
    (vigencia_hasta IS 'Effective End field.');
COMMENT ON COLUMN PRENA
    (orden_visualizacion IS 'Order Display field.');
COMMENT ON COLUMN PRENA
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN PRENA
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN PRENA
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN PRENA
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN PRENA
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN PRENA
    (created_at IS 'Created At field.');
COMMENT ON COLUMN PRENA
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN PRENA (
    nombre_programa IS 'Nombre Program',
    descripcion IS 'Description',
    valor_texto IS 'Value Text',
    valor_numerico IS 'Value Numeric',
    vigencia_desde IS 'Effective Start',
    vigencia_hasta IS 'Effective End',
    orden_visualizacion IS 'Order Display',
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

LABEL ON COLUMN PRENA (
    nombre_programa TEXT IS 'Nombre Program value for the record',
    descripcion TEXT IS 'Description value for the record',
    valor_texto TEXT IS 'Value Text value for the record',
    valor_numerico TEXT IS 'Value Numeric value for the record',
    vigencia_desde TEXT IS 'Effective Start value for the record',
    vigencia_hasta TEXT IS 'Effective End value for the record',
    orden_visualizacion TEXT IS 'Order Display value for the record',
    usuario_creacion TEXT IS 'User Creation value for the record',
    usuario_actualizacion TEXT IS 'User Update value for the record',
    version_registro TEXT IS 'Version Record value for the record',
    observaciones TEXT IS 'Notes value for the record',
    estado_registro TEXT IS 'Status Record value for the record',
    created_at TEXT IS 'Created At value for the record',
    updated_at TEXT IS 'Updated At value for the record'
);
