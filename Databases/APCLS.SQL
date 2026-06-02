--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       APCLS
-- DESCRIPCION:              Generated table for APCLS.
-- Objetivo:                 Store operational data for APCLS.
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
-- Program Name:             APCLS

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE APCLS
(
    codigo_banco FOR COLUMN APCLS01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_de_producto FOR COLUMN APCLS02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    descripcion FOR COLUMN APCLS03 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    valor_texto FOR COLUMN APCLS04 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    valor_numerico FOR COLUMN APCLS05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    vigencia_desde FOR COLUMN APCLS06 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    vigencia_hasta FOR COLUMN APCLS07 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    orden_visualizacion FOR COLUMN APCLS08 INTEGER
        NOT NULL WITH DEFAULT 0,
    usuario_creacion FOR COLUMN APCLS09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN APCLS10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN APCLS11 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN APCLS12 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN APCLS13 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN APCLS14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN APCLS15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT APCLS_PK PRIMARY KEY (
        codigo_banco,
        codigo_de_producto
    )
)
RCDFMT RAPCLS;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE APCLS IS 'Generated table for APCLS.';

LABEL ON TABLE APCLS IS 'APCLS table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN APCLS
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN APCLS
    (codigo_de_producto IS 'Code De Product field.');
COMMENT ON COLUMN APCLS
    (descripcion IS 'Description field.');
COMMENT ON COLUMN APCLS
    (valor_texto IS 'Value Text field.');
COMMENT ON COLUMN APCLS
    (valor_numerico IS 'Value Numeric field.');
COMMENT ON COLUMN APCLS
    (vigencia_desde IS 'Effective Start field.');
COMMENT ON COLUMN APCLS
    (vigencia_hasta IS 'Effective End field.');
COMMENT ON COLUMN APCLS
    (orden_visualizacion IS 'Order Display field.');
COMMENT ON COLUMN APCLS
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN APCLS
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN APCLS
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN APCLS
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN APCLS
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN APCLS
    (created_at IS 'Created At field.');
COMMENT ON COLUMN APCLS
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN APCLS (
    codigo_banco IS 'Code Bank',
    codigo_de_producto IS 'Code De Product',
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

LABEL ON COLUMN APCLS (
    codigo_banco TEXT IS 'Code Bank value for the record',
    codigo_de_producto TEXT IS 'Code De Product value for the record',
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
