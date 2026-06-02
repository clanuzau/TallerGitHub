--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       HOLYD
-- DESCRIPCION:              Generated table for HOLYD.
-- Objetivo:                 Store operational data for HOLYD.
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
-- Program Name:             HOLYD

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE HOLYD
(
    codigo_moneda FOR COLUMN HOLYD01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    fecha FOR COLUMN HOLYD02 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    descripcion FOR COLUMN HOLYD03 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    valor_texto FOR COLUMN HOLYD04 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    valor_numerico FOR COLUMN HOLYD05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    vigencia_desde FOR COLUMN HOLYD06 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    vigencia_hasta FOR COLUMN HOLYD07 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    orden_visualizacion FOR COLUMN HOLYD08 INTEGER
        NOT NULL WITH DEFAULT 0,
    usuario_creacion FOR COLUMN HOLYD09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN HOLYD10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN HOLYD11 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN HOLYD12 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN HOLYD13 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN HOLYD14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN HOLYD15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT HOLYD_PK PRIMARY KEY (
        codigo_moneda,
        fecha
    )
)
RCDFMT RHOLYD;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE HOLYD IS 'Generated table for HOLYD.';

LABEL ON TABLE HOLYD IS 'HOLYD table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN HOLYD
    (codigo_moneda IS 'Code Currency field.');
COMMENT ON COLUMN HOLYD
    (fecha IS 'Date field.');
COMMENT ON COLUMN HOLYD
    (descripcion IS 'Description field.');
COMMENT ON COLUMN HOLYD
    (valor_texto IS 'Value Text field.');
COMMENT ON COLUMN HOLYD
    (valor_numerico IS 'Value Numeric field.');
COMMENT ON COLUMN HOLYD
    (vigencia_desde IS 'Effective Start field.');
COMMENT ON COLUMN HOLYD
    (vigencia_hasta IS 'Effective End field.');
COMMENT ON COLUMN HOLYD
    (orden_visualizacion IS 'Order Display field.');
COMMENT ON COLUMN HOLYD
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN HOLYD
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN HOLYD
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN HOLYD
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN HOLYD
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN HOLYD
    (created_at IS 'Created At field.');
COMMENT ON COLUMN HOLYD
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN HOLYD (
    codigo_moneda IS 'Code Currency',
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

LABEL ON COLUMN HOLYD (
    codigo_moneda TEXT IS 'Code Currency value for the record',
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
