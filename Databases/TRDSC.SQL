--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       TRDSC
-- DESCRIPCION:              Generated table for TRDSC.
-- Objetivo:                 Store operational data for TRDSC.
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
-- Program Name:             TRDSC

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE TRDSC
(
    numero_registro_relativo FOR COLUMN TRDSC01 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    secuencia FOR COLUMN TRDSC02 INTEGER
        NOT NULL WITH DEFAULT 0,
    tipo_descripcion FOR COLUMN TRDSC03 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    texto_descripcion FOR COLUMN TRDSC04 VARCHAR(200)
        NOT NULL WITH DEFAULT '',
    codigo_idioma FOR COLUMN TRDSC05 VARCHAR(5)
        NOT NULL WITH DEFAULT '',
    formato_salida FOR COLUMN TRDSC06 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    obligatorio FOR COLUMN TRDSC07 BOOLEAN
        NOT NULL WITH DEFAULT FALSE,
    usuario_creacion FOR COLUMN TRDSC08 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN TRDSC09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN TRDSC10 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN TRDSC11 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN TRDSC12 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN TRDSC13 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN TRDSC14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT TRDSC_PK PRIMARY KEY (
        numero_registro_relativo,
        secuencia
    )
)
RCDFMT RTRDSC;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE TRDSC IS 'Generated table for TRDSC.';

LABEL ON TABLE TRDSC IS 'TRDSC table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN TRDSC
    (numero_registro_relativo IS 'Number Record Relative field.');
COMMENT ON COLUMN TRDSC
    (secuencia IS 'Sequence field.');
COMMENT ON COLUMN TRDSC
    (tipo_descripcion IS 'Type Description field.');
COMMENT ON COLUMN TRDSC
    (texto_descripcion IS 'Text Description field.');
COMMENT ON COLUMN TRDSC
    (codigo_idioma IS 'Code Language field.');
COMMENT ON COLUMN TRDSC
    (formato_salida IS 'Format Salida field.');
COMMENT ON COLUMN TRDSC
    (obligatorio IS 'Required field.');
COMMENT ON COLUMN TRDSC
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN TRDSC
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN TRDSC
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN TRDSC
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN TRDSC
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN TRDSC
    (created_at IS 'Created At field.');
COMMENT ON COLUMN TRDSC
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN TRDSC (
    numero_registro_relativo IS 'Number Record Relative',
    secuencia IS 'Sequence',
    tipo_descripcion IS 'Type Description',
    texto_descripcion IS 'Text Description',
    codigo_idioma IS 'Code Language',
    formato_salida IS 'Format Salida',
    obligatorio IS 'Required',
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

LABEL ON COLUMN TRDSC (
    numero_registro_relativo TEXT IS 'Number Record Relative value for the rec',
    secuencia TEXT IS 'Sequence value for the record',
    tipo_descripcion TEXT IS 'Type Description value for the record',
    texto_descripcion TEXT IS 'Text Description value for the record',
    codigo_idioma TEXT IS 'Code Language value for the record',
    formato_salida TEXT IS 'Format Salida value for the record',
    obligatorio TEXT IS 'Required value for the record',
    usuario_creacion TEXT IS 'User Creation value for the record',
    usuario_actualizacion TEXT IS 'User Update value for the record',
    version_registro TEXT IS 'Version Record value for the record',
    observaciones TEXT IS 'Notes value for the record',
    estado_registro TEXT IS 'Status Record value for the record',
    created_at TEXT IS 'Created At value for the record',
    updated_at TEXT IS 'Updated At value for the record'
);
