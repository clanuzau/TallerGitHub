--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       UT500
-- DESCRIPCION:              Generated table for UT500.
-- Objetivo:                 Store operational data for UT500.
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
-- Program Name:             UT500

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE UT500
(
    codigo_usuario FOR COLUMN UT50001 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    fecha FOR COLUMN UT50002 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    descripcion FOR COLUMN UT50003 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    valor_texto FOR COLUMN UT50004 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    valor_numerico FOR COLUMN UT50005 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    vigencia_desde FOR COLUMN UT50006 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    vigencia_hasta FOR COLUMN UT50007 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    orden_visualizacion FOR COLUMN UT50008 INTEGER
        NOT NULL WITH DEFAULT 0,
    usuario_creacion FOR COLUMN UT50009 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN UT50010 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN UT50011 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN UT50012 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN UT50013 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN UT50014 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN UT50015 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT UT500_PK PRIMARY KEY (
        codigo_usuario,
        fecha
    )
)
RCDFMT RUT500;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE UT500 IS 'Generated table for UT500.';

LABEL ON TABLE UT500 IS 'UT500 table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN UT500
    (codigo_usuario IS 'Code User field.');
COMMENT ON COLUMN UT500
    (fecha IS 'Date field.');
COMMENT ON COLUMN UT500
    (descripcion IS 'Description field.');
COMMENT ON COLUMN UT500
    (valor_texto IS 'Value Text field.');
COMMENT ON COLUMN UT500
    (valor_numerico IS 'Value Numeric field.');
COMMENT ON COLUMN UT500
    (vigencia_desde IS 'Effective Start field.');
COMMENT ON COLUMN UT500
    (vigencia_hasta IS 'Effective End field.');
COMMENT ON COLUMN UT500
    (orden_visualizacion IS 'Order Display field.');
COMMENT ON COLUMN UT500
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN UT500
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN UT500
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN UT500
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN UT500
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN UT500
    (created_at IS 'Created At field.');
COMMENT ON COLUMN UT500
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN UT500 (
    codigo_usuario IS 'Code User',
    fecha IS 'Date',
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

LABEL ON COLUMN UT500 (
    codigo_usuario TEXT IS 'Code User value for the record',
    fecha TEXT IS 'Date value for the record',
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
