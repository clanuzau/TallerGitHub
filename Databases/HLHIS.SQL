--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       HLHIS
-- DESCRIPCION:              Generated table for HLHIS.
-- Objetivo:                 Store operational data for HLHIS.
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
-- Program Name:             HLHIS

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE HLHIS
(
    id FOR COLUMN HLHIS01 BIGINT
        NOT NULL WITH DEFAULT 0,
    descripcion FOR COLUMN HLHIS02 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    valor_texto FOR COLUMN HLHIS03 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    valor_numerico FOR COLUMN HLHIS04 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    vigencia_desde FOR COLUMN HLHIS05 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    vigencia_hasta FOR COLUMN HLHIS06 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    orden_visualizacion FOR COLUMN HLHIS07 INTEGER
        NOT NULL WITH DEFAULT 0,
    usuario_creacion FOR COLUMN HLHIS08 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN HLHIS09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN HLHIS10 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN HLHIS11 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN HLHIS12 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN HLHIS13 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN HLHIS14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT HLHIS_PK PRIMARY KEY (
        id
    )
)
RCDFMT RHLHIS;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE HLHIS IS 'Generated table for HLHIS.';

LABEL ON TABLE HLHIS IS 'HLHIS table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN HLHIS
    (id IS 'Id field.');
COMMENT ON COLUMN HLHIS
    (descripcion IS 'Description field.');
COMMENT ON COLUMN HLHIS
    (valor_texto IS 'Value Text field.');
COMMENT ON COLUMN HLHIS
    (valor_numerico IS 'Value Numeric field.');
COMMENT ON COLUMN HLHIS
    (vigencia_desde IS 'Effective Start field.');
COMMENT ON COLUMN HLHIS
    (vigencia_hasta IS 'Effective End field.');
COMMENT ON COLUMN HLHIS
    (orden_visualizacion IS 'Order Display field.');
COMMENT ON COLUMN HLHIS
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN HLHIS
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN HLHIS
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN HLHIS
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN HLHIS
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN HLHIS
    (created_at IS 'Created At field.');
COMMENT ON COLUMN HLHIS
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN HLHIS (
    id IS 'Id',
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

LABEL ON COLUMN HLHIS (
    id TEXT IS 'Id value for the record',
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
