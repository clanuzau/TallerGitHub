--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       CNOFC
-- DESCRIPCION:              Generated table for CNOFC.
-- Objetivo:                 Store operational data for CNOFC.
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
-- Program Name:             CNOFC

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE CNOFC
(
    codigo_tabla FOR COLUMN CNOFC01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_registro FOR COLUMN CNOFC02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    descripcion FOR COLUMN CNOFC03 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    valor_texto FOR COLUMN CNOFC04 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    valor_numerico FOR COLUMN CNOFC05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    vigencia_desde FOR COLUMN CNOFC06 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    vigencia_hasta FOR COLUMN CNOFC07 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    orden_visualizacion FOR COLUMN CNOFC08 INTEGER
        NOT NULL WITH DEFAULT 0,
    usuario_creacion FOR COLUMN CNOFC09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN CNOFC10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN CNOFC11 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN CNOFC12 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN CNOFC13 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN CNOFC14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN CNOFC15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT CNOFC_PK PRIMARY KEY (
        codigo_tabla,
        codigo_registro
    )
)
RCDFMT RCNOFC;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE CNOFC IS 'Generated table for CNOFC.';

LABEL ON TABLE CNOFC IS 'CNOFC table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN CNOFC
    (codigo_tabla IS 'Code Table field.');
COMMENT ON COLUMN CNOFC
    (codigo_registro IS 'Code Record field.');
COMMENT ON COLUMN CNOFC
    (descripcion IS 'Description field.');
COMMENT ON COLUMN CNOFC
    (valor_texto IS 'Value Text field.');
COMMENT ON COLUMN CNOFC
    (valor_numerico IS 'Value Numeric field.');
COMMENT ON COLUMN CNOFC
    (vigencia_desde IS 'Effective Start field.');
COMMENT ON COLUMN CNOFC
    (vigencia_hasta IS 'Effective End field.');
COMMENT ON COLUMN CNOFC
    (orden_visualizacion IS 'Order Display field.');
COMMENT ON COLUMN CNOFC
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN CNOFC
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN CNOFC
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN CNOFC
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN CNOFC
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN CNOFC
    (created_at IS 'Created At field.');
COMMENT ON COLUMN CNOFC
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN CNOFC (
    codigo_tabla IS 'Code Table',
    codigo_registro IS 'Code Record',
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

LABEL ON COLUMN CNOFC (
    codigo_tabla TEXT IS 'Code Table value for the record',
    codigo_registro TEXT IS 'Code Record value for the record',
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
