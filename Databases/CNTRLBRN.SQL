--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       CNTRLBRN
-- DESCRIPCION:              Generated table for CNTRLBRN.
-- Objetivo:                 Store operational data for CNTRLBRN.
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
-- Program Name:             CNTRLBRN

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE CNTRLBRN
(
    codigo_banco FOR COLUMN CNTRLBRN01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_sucursal FOR COLUMN CNTRLBRN02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    descripcion FOR COLUMN CNTRLBRN03 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    valor_texto FOR COLUMN CNTRLBRN04 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    valor_numerico FOR COLUMN CNTRLBRN05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    vigencia_desde FOR COLUMN CNTRLBRN06 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    vigencia_hasta FOR COLUMN CNTRLBRN07 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    orden_visualizacion FOR COLUMN CNTRLBRN08 INTEGER
        NOT NULL WITH DEFAULT 0,
    usuario_creacion FOR COLUMN CNTRLBRN09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN CNTRLBRN10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN CNTRLBRN11 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN CNTRLBRN12 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN CNTRLBRN13 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN CNTRLBRN14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN CNTRLBRN15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT CNTRLBRN_PK PRIMARY KEY (
        codigo_banco,
        codigo_sucursal
    )
)
RCDFMT RCNTRLBRN;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE CNTRLBRN IS 'Generated table for CNTRLBRN.';

LABEL ON TABLE CNTRLBRN IS 'CNTRLBRN table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN CNTRLBRN
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN CNTRLBRN
    (codigo_sucursal IS 'Code Branch field.');
COMMENT ON COLUMN CNTRLBRN
    (descripcion IS 'Description field.');
COMMENT ON COLUMN CNTRLBRN
    (valor_texto IS 'Value Text field.');
COMMENT ON COLUMN CNTRLBRN
    (valor_numerico IS 'Value Numeric field.');
COMMENT ON COLUMN CNTRLBRN
    (vigencia_desde IS 'Effective Start field.');
COMMENT ON COLUMN CNTRLBRN
    (vigencia_hasta IS 'Effective End field.');
COMMENT ON COLUMN CNTRLBRN
    (orden_visualizacion IS 'Order Display field.');
COMMENT ON COLUMN CNTRLBRN
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN CNTRLBRN
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN CNTRLBRN
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN CNTRLBRN
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN CNTRLBRN
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN CNTRLBRN
    (created_at IS 'Created At field.');
COMMENT ON COLUMN CNTRLBRN
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN CNTRLBRN (
    codigo_banco IS 'Code Bank',
    codigo_sucursal IS 'Code Branch',
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

LABEL ON COLUMN CNTRLBRN (
    codigo_banco TEXT IS 'Code Bank value for the record',
    codigo_sucursal TEXT IS 'Code Branch value for the record',
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
