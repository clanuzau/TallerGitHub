--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       DIMST
-- DESCRIPCION:              Generated table for DIMST.
-- Objetivo:                 Store operational data for DIMST.
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
-- Program Name:             DIMST

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE DIMST
(
    tipo_cuenta FOR COLUMN DIMST01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    numero_tabla FOR COLUMN DIMST02 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    secuencia FOR COLUMN DIMST03 INTEGER
        NOT NULL WITH DEFAULT 0,
    tipo_documento FOR COLUMN DIMST04 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    descripcion_documento FOR COLUMN DIMST05 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    obligatorio FOR COLUMN DIMST06 BOOLEAN
        NOT NULL WITH DEFAULT FALSE,
    fecha_recepcion FOR COLUMN DIMST07 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN DIMST08 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    observaciones FOR COLUMN DIMST09 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN DIMST10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN DIMST11 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN DIMST12 INTEGER
        NOT NULL WITH DEFAULT 0,
    estado_registro FOR COLUMN DIMST13 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN DIMST14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN DIMST15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT DIMST_PK PRIMARY KEY (
        tipo_cuenta,
        numero_tabla,
        secuencia
    )
)
RCDFMT RDIMST;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE DIMST IS 'Generated table for DIMST.';

LABEL ON TABLE DIMST IS 'DIMST table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN DIMST
    (tipo_cuenta IS 'Type Account field.');
COMMENT ON COLUMN DIMST
    (numero_tabla IS 'Number Table field.');
COMMENT ON COLUMN DIMST
    (secuencia IS 'Sequence field.');
COMMENT ON COLUMN DIMST
    (tipo_documento IS 'Type Document field.');
COMMENT ON COLUMN DIMST
    (descripcion_documento IS 'Description Document field.');
COMMENT ON COLUMN DIMST
    (obligatorio IS 'Required field.');
COMMENT ON COLUMN DIMST
    (fecha_recepcion IS 'Date Recepcion field.');
COMMENT ON COLUMN DIMST
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN DIMST
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN DIMST
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN DIMST
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN DIMST
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN DIMST
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN DIMST
    (created_at IS 'Created At field.');
COMMENT ON COLUMN DIMST
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN DIMST (
    tipo_cuenta IS 'Type Account',
    numero_tabla IS 'Number Table',
    secuencia IS 'Sequence',
    tipo_documento IS 'Type Document',
    descripcion_documento IS 'Description Document',
    obligatorio IS 'Required',
    fecha_recepcion IS 'Date Recepcion',
    fecha_vencimiento IS 'Date Due',
    observaciones IS 'Notes',
    usuario_creacion IS 'User Creation',
    usuario_actualizacion IS 'User Update',
    version_registro IS 'Version Record',
    estado_registro IS 'Status Record',
    created_at IS 'Created At',
    updated_at IS 'Updated At'
);

--=====================================================================
-- COLUMN TEXT LABELS
--=====================================================================

LABEL ON COLUMN DIMST (
    tipo_cuenta TEXT IS 'Type Account value for the record',
    numero_tabla TEXT IS 'Number Table value for the record',
    secuencia TEXT IS 'Sequence value for the record',
    tipo_documento TEXT IS 'Type Document value for the record',
    descripcion_documento TEXT IS 'Description Document value for the record',
    obligatorio TEXT IS 'Required value for the record',
    fecha_recepcion TEXT IS 'Date Recepcion value for the record',
    fecha_vencimiento TEXT IS 'Date Due value for the record',
    observaciones TEXT IS 'Notes value for the record',
    usuario_creacion TEXT IS 'User Creation value for the record',
    usuario_actualizacion TEXT IS 'User Update value for the record',
    version_registro TEXT IS 'Version Record value for the record',
    estado_registro TEXT IS 'Status Record value for the record',
    created_at TEXT IS 'Created At value for the record',
    updated_at TEXT IS 'Updated At value for the record'
);
