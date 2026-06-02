--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       UT510
-- DESCRIPCION:              Generated table for UT510.
-- Objetivo:                 Store operational data for UT510.
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
-- Program Name:             UT510

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE UT510
(
    codigo_usuario FOR COLUMN UT51001 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    fecha FOR COLUMN UT51002 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    descripcion FOR COLUMN UT51003 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    valor_texto FOR COLUMN UT51004 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    valor_numerico FOR COLUMN UT51005 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    vigencia_desde FOR COLUMN UT51006 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    vigencia_hasta FOR COLUMN UT51007 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    orden_visualizacion FOR COLUMN UT51008 INTEGER
        NOT NULL WITH DEFAULT 0,
    usuario_creacion FOR COLUMN UT51009 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN UT51010 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN UT51011 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN UT51012 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN UT51013 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN UT51014 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN UT51015 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT UT510_PK PRIMARY KEY (
        codigo_usuario,
        fecha
    )
)
RCDFMT RUT510;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE UT510 IS 'Generated table for UT510.';

LABEL ON TABLE UT510 IS 'UT510 table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN UT510
    (codigo_usuario IS 'Code User field.');
COMMENT ON COLUMN UT510
    (fecha IS 'Date field.');
COMMENT ON COLUMN UT510
    (descripcion IS 'Description field.');
COMMENT ON COLUMN UT510
    (valor_texto IS 'Value Text field.');
COMMENT ON COLUMN UT510
    (valor_numerico IS 'Value Numeric field.');
COMMENT ON COLUMN UT510
    (vigencia_desde IS 'Effective Start field.');
COMMENT ON COLUMN UT510
    (vigencia_hasta IS 'Effective End field.');
COMMENT ON COLUMN UT510
    (orden_visualizacion IS 'Order Display field.');
COMMENT ON COLUMN UT510
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN UT510
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN UT510
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN UT510
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN UT510
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN UT510
    (created_at IS 'Created At field.');
COMMENT ON COLUMN UT510
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN UT510 (
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

LABEL ON COLUMN UT510 (
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
