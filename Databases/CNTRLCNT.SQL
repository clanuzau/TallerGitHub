--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       CNTRLCNT
-- DESCRIPCION:              Generated table for CNTRLCNT.
-- Objetivo:                 Store operational data for CNTRLCNT.
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
-- Program Name:             CNTRLCNT

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE CNTRLCNT
(
    codigo_banco FOR COLUMN CNTRLCNT01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    descripcion FOR COLUMN CNTRLCNT02 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    valor_texto FOR COLUMN CNTRLCNT03 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    valor_numerico FOR COLUMN CNTRLCNT04 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    vigencia_desde FOR COLUMN CNTRLCNT05 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    vigencia_hasta FOR COLUMN CNTRLCNT06 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    orden_visualizacion FOR COLUMN CNTRLCNT07 INTEGER
        NOT NULL WITH DEFAULT 0,
    usuario_creacion FOR COLUMN CNTRLCNT08 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN CNTRLCNT09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN CNTRLCNT10 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN CNTRLCNT11 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN CNTRLCNT12 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN CNTRLCNT13 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN CNTRLCNT14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT CNTRLCNT_PK PRIMARY KEY (
        codigo_banco
    )
)
RCDFMT RCNTRLCNT;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE CNTRLCNT IS 'Generated table for CNTRLCNT.';

LABEL ON TABLE CNTRLCNT IS 'CNTRLCNT table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN CNTRLCNT
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN CNTRLCNT
    (descripcion IS 'Description field.');
COMMENT ON COLUMN CNTRLCNT
    (valor_texto IS 'Value Text field.');
COMMENT ON COLUMN CNTRLCNT
    (valor_numerico IS 'Value Numeric field.');
COMMENT ON COLUMN CNTRLCNT
    (vigencia_desde IS 'Effective Start field.');
COMMENT ON COLUMN CNTRLCNT
    (vigencia_hasta IS 'Effective End field.');
COMMENT ON COLUMN CNTRLCNT
    (orden_visualizacion IS 'Order Display field.');
COMMENT ON COLUMN CNTRLCNT
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN CNTRLCNT
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN CNTRLCNT
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN CNTRLCNT
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN CNTRLCNT
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN CNTRLCNT
    (created_at IS 'Created At field.');
COMMENT ON COLUMN CNTRLCNT
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN CNTRLCNT (
    codigo_banco IS 'Code Bank',
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

LABEL ON COLUMN CNTRLCNT (
    codigo_banco TEXT IS 'Code Bank value for the record',
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
