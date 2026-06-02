--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       MLNCT
-- DESCRIPCION:              Generated table for MLNCT.
-- Objetivo:                 Store operational data for MLNCT.
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
-- Program Name:             MLNCT

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE MLNCT
(
    codigo_banco FOR COLUMN MLNCT01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_de_notificacion FOR COLUMN MLNCT02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    nivel FOR COLUMN MLNCT03 INTEGER
        NOT NULL WITH DEFAULT 0,
    idioma FOR COLUMN MLNCT04 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    secuencia FOR COLUMN MLNCT05 INTEGER
        NOT NULL WITH DEFAULT 0,
    descripcion FOR COLUMN MLNCT06 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    valor_texto FOR COLUMN MLNCT07 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    valor_numerico FOR COLUMN MLNCT08 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    vigencia_desde FOR COLUMN MLNCT09 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    vigencia_hasta FOR COLUMN MLNCT10 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    orden_visualizacion FOR COLUMN MLNCT11 INTEGER
        NOT NULL WITH DEFAULT 0,
    usuario_creacion FOR COLUMN MLNCT12 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN MLNCT13 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN MLNCT14 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN MLNCT15 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN MLNCT16 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN MLNCT17 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN MLNCT18 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT MLNCT_PK PRIMARY KEY (
        codigo_banco,
        codigo_de_notificacion,
        nivel,
        idioma,
        secuencia
    )
)
RCDFMT RMLNCT;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE MLNCT IS 'Generated table for MLNCT.';

LABEL ON TABLE MLNCT IS 'MLNCT table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN MLNCT
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN MLNCT
    (codigo_de_notificacion IS 'Code De Notice field.');
COMMENT ON COLUMN MLNCT
    (nivel IS 'Level field.');
COMMENT ON COLUMN MLNCT
    (idioma IS 'Language field.');
COMMENT ON COLUMN MLNCT
    (secuencia IS 'Sequence field.');
COMMENT ON COLUMN MLNCT
    (descripcion IS 'Description field.');
COMMENT ON COLUMN MLNCT
    (valor_texto IS 'Value Text field.');
COMMENT ON COLUMN MLNCT
    (valor_numerico IS 'Value Numeric field.');
COMMENT ON COLUMN MLNCT
    (vigencia_desde IS 'Effective Start field.');
COMMENT ON COLUMN MLNCT
    (vigencia_hasta IS 'Effective End field.');
COMMENT ON COLUMN MLNCT
    (orden_visualizacion IS 'Order Display field.');
COMMENT ON COLUMN MLNCT
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN MLNCT
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN MLNCT
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN MLNCT
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN MLNCT
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN MLNCT
    (created_at IS 'Created At field.');
COMMENT ON COLUMN MLNCT
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN MLNCT (
    codigo_banco IS 'Code Bank',
    codigo_de_notificacion IS 'Code De Notice',
    nivel IS 'Level',
    idioma IS 'Language',
    secuencia IS 'Sequence',
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

LABEL ON COLUMN MLNCT (
    codigo_banco TEXT IS 'Code Bank value for the record',
    codigo_de_notificacion TEXT IS 'Code De Notice value for the record',
    nivel TEXT IS 'Level value for the record',
    idioma TEXT IS 'Language value for the record',
    secuencia TEXT IS 'Sequence value for the record',
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
