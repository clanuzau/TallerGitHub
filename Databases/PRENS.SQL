--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       PRENS
-- DESCRIPCION:              Generated table for PRENS.
-- Objetivo:                 Store operational data for PRENS.
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
-- Program Name:             PRENS

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE PRENS
(
    nombre_programa FOR COLUMN PRENS01 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    descripcion FOR COLUMN PRENS02 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    valor_texto FOR COLUMN PRENS03 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    valor_numerico FOR COLUMN PRENS04 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    vigencia_desde FOR COLUMN PRENS05 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    vigencia_hasta FOR COLUMN PRENS06 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    orden_visualizacion FOR COLUMN PRENS07 INTEGER
        NOT NULL WITH DEFAULT 0,
    usuario_creacion FOR COLUMN PRENS08 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN PRENS09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN PRENS10 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN PRENS11 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN PRENS12 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN PRENS13 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN PRENS14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT PRENS_PK PRIMARY KEY (
        nombre_programa
    )
)
RCDFMT RPRENS;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE PRENS IS 'Generated table for PRENS.';

LABEL ON TABLE PRENS IS 'PRENS table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN PRENS
    (nombre_programa IS 'Nombre Program field.');
COMMENT ON COLUMN PRENS
    (descripcion IS 'Description field.');
COMMENT ON COLUMN PRENS
    (valor_texto IS 'Value Text field.');
COMMENT ON COLUMN PRENS
    (valor_numerico IS 'Value Numeric field.');
COMMENT ON COLUMN PRENS
    (vigencia_desde IS 'Effective Start field.');
COMMENT ON COLUMN PRENS
    (vigencia_hasta IS 'Effective End field.');
COMMENT ON COLUMN PRENS
    (orden_visualizacion IS 'Order Display field.');
COMMENT ON COLUMN PRENS
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN PRENS
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN PRENS
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN PRENS
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN PRENS
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN PRENS
    (created_at IS 'Created At field.');
COMMENT ON COLUMN PRENS
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN PRENS (
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

LABEL ON COLUMN PRENS (
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
