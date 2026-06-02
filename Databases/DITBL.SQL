--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       DITBL
-- DESCRIPCION:              Generated table for DITBL.
-- Objetivo:                 Store operational data for DITBL.
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
-- Program Name:             DITBL

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE DITBL
(
    numero_tabla FOR COLUMN DITBL01 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    secuencia FOR COLUMN DITBL02 INTEGER
        NOT NULL WITH DEFAULT 0,
    tipo_documento FOR COLUMN DITBL03 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    descripcion_documento FOR COLUMN DITBL04 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    obligatorio FOR COLUMN DITBL05 BOOLEAN
        NOT NULL WITH DEFAULT FALSE,
    fecha_recepcion FOR COLUMN DITBL06 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN DITBL07 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    observaciones FOR COLUMN DITBL08 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN DITBL09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN DITBL10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN DITBL11 INTEGER
        NOT NULL WITH DEFAULT 0,
    estado_registro FOR COLUMN DITBL12 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN DITBL13 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN DITBL14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT DITBL_PK PRIMARY KEY (
        numero_tabla,
        secuencia
    )
)
RCDFMT RDITBL;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE DITBL IS 'Generated table for DITBL.';

LABEL ON TABLE DITBL IS 'DITBL table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN DITBL
    (numero_tabla IS 'Number Table field.');
COMMENT ON COLUMN DITBL
    (secuencia IS 'Sequence field.');
COMMENT ON COLUMN DITBL
    (tipo_documento IS 'Type Document field.');
COMMENT ON COLUMN DITBL
    (descripcion_documento IS 'Description Document field.');
COMMENT ON COLUMN DITBL
    (obligatorio IS 'Required field.');
COMMENT ON COLUMN DITBL
    (fecha_recepcion IS 'Date Recepcion field.');
COMMENT ON COLUMN DITBL
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN DITBL
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN DITBL
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN DITBL
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN DITBL
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN DITBL
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN DITBL
    (created_at IS 'Created At field.');
COMMENT ON COLUMN DITBL
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN DITBL (
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

LABEL ON COLUMN DITBL (
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
