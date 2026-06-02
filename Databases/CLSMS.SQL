--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       CLSMS
-- DESCRIPCION:              Generated table for CLSMS.
-- Objetivo:                 Store operational data for CLSMS.
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
-- Program Name:             CLSMS

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE CLSMS
(
    codigo_clase FOR COLUMN CLSMS01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    descripcion FOR COLUMN CLSMS02 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    fecha_adquisicion FOR COLUMN CLSMS03 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    valor_adquisicion FOR COLUMN CLSMS04 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    vida_util_meses FOR COLUMN CLSMS05 INTEGER
        NOT NULL WITH DEFAULT 0,
    depreciacion_acumulada FOR COLUMN CLSMS06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    estado_activo FOR COLUMN CLSMS07 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN CLSMS08 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN CLSMS09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN CLSMS10 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN CLSMS11 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN CLSMS12 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN CLSMS13 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN CLSMS14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT CLSMS_PK PRIMARY KEY (
        codigo_clase
    )
)
RCDFMT RCLSMS;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE CLSMS IS 'Generated table for CLSMS.';

LABEL ON TABLE CLSMS IS 'CLSMS table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN CLSMS
    (codigo_clase IS 'Code Class field.');
COMMENT ON COLUMN CLSMS
    (descripcion IS 'Description field.');
COMMENT ON COLUMN CLSMS
    (fecha_adquisicion IS 'Date Adquisicion field.');
COMMENT ON COLUMN CLSMS
    (valor_adquisicion IS 'Value Adquisicion field.');
COMMENT ON COLUMN CLSMS
    (vida_util_meses IS 'Vida Util Months field.');
COMMENT ON COLUMN CLSMS
    (depreciacion_acumulada IS 'Depreciacion Acumulada field.');
COMMENT ON COLUMN CLSMS
    (estado_activo IS 'Status Asset field.');
COMMENT ON COLUMN CLSMS
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN CLSMS
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN CLSMS
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN CLSMS
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN CLSMS
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN CLSMS
    (created_at IS 'Created At field.');
COMMENT ON COLUMN CLSMS
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN CLSMS (
    codigo_clase IS 'Code Class',
    descripcion IS 'Description',
    fecha_adquisicion IS 'Date Adquisicion',
    valor_adquisicion IS 'Value Adquisicion',
    vida_util_meses IS 'Vida Util Months',
    depreciacion_acumulada IS 'Depreciacion Acumulada',
    estado_activo IS 'Status Asset',
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

LABEL ON COLUMN CLSMS (
    codigo_clase TEXT IS 'Code Class value for the record',
    descripcion TEXT IS 'Description value for the record',
    fecha_adquisicion TEXT IS 'Date Adquisicion value for the record',
    valor_adquisicion TEXT IS 'Value Adquisicion value for the record',
    vida_util_meses TEXT IS 'Vida Util Months value for the record',
    depreciacion_acumulada TEXT IS 'Depreciacion Acumulada value for the recor',
    estado_activo TEXT IS 'Status Asset value for the record',
    usuario_creacion TEXT IS 'User Creation value for the record',
    usuario_actualizacion TEXT IS 'User Update value for the record',
    version_registro TEXT IS 'Version Record value for the record',
    observaciones TEXT IS 'Notes value for the record',
    estado_registro TEXT IS 'Status Record value for the record',
    created_at TEXT IS 'Created At value for the record',
    updated_at TEXT IS 'Updated At value for the record'
);
