--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       RATES
-- DESCRIPCION:              Generated table for RATES.
-- Objetivo:                 Store operational data for RATES.
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
-- Program Name:             RATES

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE RATES
(
    codigo_banco FOR COLUMN RATES01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_moneda FOR COLUMN RATES02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    descripcion FOR COLUMN RATES03 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    valor_texto FOR COLUMN RATES04 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    valor_numerico FOR COLUMN RATES05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    vigencia_desde FOR COLUMN RATES06 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    vigencia_hasta FOR COLUMN RATES07 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    orden_visualizacion FOR COLUMN RATES08 INTEGER
        NOT NULL WITH DEFAULT 0,
    usuario_creacion FOR COLUMN RATES09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN RATES10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN RATES11 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN RATES12 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN RATES13 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN RATES14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN RATES15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT RATES_PK PRIMARY KEY (
        codigo_banco,
        codigo_moneda
    )
)
RCDFMT RRATES;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE RATES IS 'Generated table for RATES.';

LABEL ON TABLE RATES IS 'RATES table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN RATES
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN RATES
    (codigo_moneda IS 'Code Currency field.');
COMMENT ON COLUMN RATES
    (descripcion IS 'Description field.');
COMMENT ON COLUMN RATES
    (valor_texto IS 'Value Text field.');
COMMENT ON COLUMN RATES
    (valor_numerico IS 'Value Numeric field.');
COMMENT ON COLUMN RATES
    (vigencia_desde IS 'Effective Start field.');
COMMENT ON COLUMN RATES
    (vigencia_hasta IS 'Effective End field.');
COMMENT ON COLUMN RATES
    (orden_visualizacion IS 'Order Display field.');
COMMENT ON COLUMN RATES
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN RATES
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN RATES
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN RATES
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN RATES
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN RATES
    (created_at IS 'Created At field.');
COMMENT ON COLUMN RATES
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN RATES (
    codigo_banco IS 'Code Bank',
    codigo_moneda IS 'Code Currency',
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

LABEL ON COLUMN RATES (
    codigo_banco TEXT IS 'Code Bank value for the record',
    codigo_moneda TEXT IS 'Code Currency value for the record',
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
