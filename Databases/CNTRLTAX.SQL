--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       CNTRLTAX
-- DESCRIPCION:              Generated table for CNTRLTAX.
-- Objetivo:                 Store operational data for CNTRLTAX.
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
-- Program Name:             CNTRLTAX

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE CNTRLTAX
(
    codigo_banco FOR COLUMN CNTRLTAX01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_impuesto FOR COLUMN CNTRLTAX02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    descripcion FOR COLUMN CNTRLTAX03 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    valor_texto FOR COLUMN CNTRLTAX04 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    valor_numerico FOR COLUMN CNTRLTAX05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    vigencia_desde FOR COLUMN CNTRLTAX06 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    vigencia_hasta FOR COLUMN CNTRLTAX07 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    orden_visualizacion FOR COLUMN CNTRLTAX08 INTEGER
        NOT NULL WITH DEFAULT 0,
    usuario_creacion FOR COLUMN CNTRLTAX09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN CNTRLTAX10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN CNTRLTAX11 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN CNTRLTAX12 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN CNTRLTAX13 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN CNTRLTAX14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN CNTRLTAX15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT CNTRLTAX_PK PRIMARY KEY (
        codigo_banco,
        codigo_impuesto
    )
)
RCDFMT RCNTRLTAX;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE CNTRLTAX IS 'Generated table for CNTRLTAX.';

LABEL ON TABLE CNTRLTAX IS 'CNTRLTAX table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN CNTRLTAX
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN CNTRLTAX
    (codigo_impuesto IS 'Code Tax field.');
COMMENT ON COLUMN CNTRLTAX
    (descripcion IS 'Description field.');
COMMENT ON COLUMN CNTRLTAX
    (valor_texto IS 'Value Text field.');
COMMENT ON COLUMN CNTRLTAX
    (valor_numerico IS 'Value Numeric field.');
COMMENT ON COLUMN CNTRLTAX
    (vigencia_desde IS 'Effective Start field.');
COMMENT ON COLUMN CNTRLTAX
    (vigencia_hasta IS 'Effective End field.');
COMMENT ON COLUMN CNTRLTAX
    (orden_visualizacion IS 'Order Display field.');
COMMENT ON COLUMN CNTRLTAX
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN CNTRLTAX
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN CNTRLTAX
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN CNTRLTAX
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN CNTRLTAX
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN CNTRLTAX
    (created_at IS 'Created At field.');
COMMENT ON COLUMN CNTRLTAX
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN CNTRLTAX (
    codigo_banco IS 'Code Bank',
    codigo_impuesto IS 'Code Tax',
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

LABEL ON COLUMN CNTRLTAX (
    codigo_banco TEXT IS 'Code Bank value for the record',
    codigo_impuesto TEXT IS 'Code Tax value for the record',
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
