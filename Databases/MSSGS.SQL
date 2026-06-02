--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       MSSGS
-- DESCRIPCION:              Generated table for MSSGS.
-- Objetivo:                 Store operational data for MSSGS.
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
-- Program Name:             MSSGS

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE MSSGS
(
    id FOR COLUMN MSSGS01 BIGINT
        NOT NULL WITH DEFAULT 0,
    descripcion FOR COLUMN MSSGS02 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    valor_texto FOR COLUMN MSSGS03 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    valor_numerico FOR COLUMN MSSGS04 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    vigencia_desde FOR COLUMN MSSGS05 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    vigencia_hasta FOR COLUMN MSSGS06 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    orden_visualizacion FOR COLUMN MSSGS07 INTEGER
        NOT NULL WITH DEFAULT 0,
    usuario_creacion FOR COLUMN MSSGS08 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN MSSGS09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN MSSGS10 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN MSSGS11 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN MSSGS12 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN MSSGS13 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN MSSGS14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT MSSGS_PK PRIMARY KEY (
        id
    )
)
RCDFMT RMSSGS;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE MSSGS IS 'Generated table for MSSGS.';

LABEL ON TABLE MSSGS IS 'MSSGS table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN MSSGS
    (id IS 'Id field.');
COMMENT ON COLUMN MSSGS
    (descripcion IS 'Description field.');
COMMENT ON COLUMN MSSGS
    (valor_texto IS 'Value Text field.');
COMMENT ON COLUMN MSSGS
    (valor_numerico IS 'Value Numeric field.');
COMMENT ON COLUMN MSSGS
    (vigencia_desde IS 'Effective Start field.');
COMMENT ON COLUMN MSSGS
    (vigencia_hasta IS 'Effective End field.');
COMMENT ON COLUMN MSSGS
    (orden_visualizacion IS 'Order Display field.');
COMMENT ON COLUMN MSSGS
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN MSSGS
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN MSSGS
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN MSSGS
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN MSSGS
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN MSSGS
    (created_at IS 'Created At field.');
COMMENT ON COLUMN MSSGS
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN MSSGS (
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

LABEL ON COLUMN MSSGS (
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
