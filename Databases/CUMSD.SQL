--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       CUMSD
-- DESCRIPCION:              Generated table for CUMSD.
-- Objetivo:                 Store operational data for CUMSD.
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
-- Program Name:             CUMSD

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE CUMSD
(
    id_cliente FOR COLUMN CUMSD01 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    tipo_persona FOR COLUMN CUMSD02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    tipo_identificacion FOR COLUMN CUMSD03 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    numero_identificacion FOR COLUMN CUMSD04 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    nombres FOR COLUMN CUMSD05 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    apellidos FOR COLUMN CUMSD06 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    razon_social FOR COLUMN CUMSD07 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    fecha_nacimiento FOR COLUMN CUMSD08 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    direccion FOR COLUMN CUMSD09 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    email FOR COLUMN CUMSD10 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    telefono FOR COLUMN CUMSD11 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    pais_residencia FOR COLUMN CUMSD12 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN CUMSD13 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN CUMSD14 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN CUMSD15 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN CUMSD16 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN CUMSD17 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN CUMSD18 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN CUMSD19 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT CUMSD_PK PRIMARY KEY (
        id_cliente
    )
)
RCDFMT RCUMSD;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE CUMSD IS 'Generated table for CUMSD.';

LABEL ON TABLE CUMSD IS 'CUMSD table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN CUMSD
    (id_cliente IS 'Id Customer field.');
COMMENT ON COLUMN CUMSD
    (tipo_persona IS 'Type Persona field.');
COMMENT ON COLUMN CUMSD
    (tipo_identificacion IS 'Type Identification field.');
COMMENT ON COLUMN CUMSD
    (numero_identificacion IS 'Number Identification field.');
COMMENT ON COLUMN CUMSD
    (nombres IS 'Nombres field.');
COMMENT ON COLUMN CUMSD
    (apellidos IS 'Apellidos field.');
COMMENT ON COLUMN CUMSD
    (razon_social IS 'Name Legal field.');
COMMENT ON COLUMN CUMSD
    (fecha_nacimiento IS 'Date Nacimiento field.');
COMMENT ON COLUMN CUMSD
    (direccion IS 'Direccion field.');
COMMENT ON COLUMN CUMSD
    (email IS 'Email field.');
COMMENT ON COLUMN CUMSD
    (telefono IS 'Phone field.');
COMMENT ON COLUMN CUMSD
    (pais_residencia IS 'Country Residencia field.');
COMMENT ON COLUMN CUMSD
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN CUMSD
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN CUMSD
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN CUMSD
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN CUMSD
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN CUMSD
    (created_at IS 'Created At field.');
COMMENT ON COLUMN CUMSD
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN CUMSD (
    id_cliente IS 'Id Customer',
    tipo_persona IS 'Type Persona',
    tipo_identificacion IS 'Type Identification',
    numero_identificacion IS 'Number Identification',
    nombres IS 'Nombres',
    apellidos IS 'Apellidos',
    razon_social IS 'Name Legal',
    fecha_nacimiento IS 'Date Nacimiento',
    direccion IS 'Direccion',
    email IS 'Email',
    telefono IS 'Phone',
    pais_residencia IS 'Country Residencia',
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

LABEL ON COLUMN CUMSD (
    id_cliente TEXT IS 'Id Customer value for the record',
    tipo_persona TEXT IS 'Type Persona value for the record',
    tipo_identificacion TEXT IS 'Type Identification value for the record',
    numero_identificacion TEXT IS 'Number Identification value for the record',
    nombres TEXT IS 'Nombres value for the record',
    apellidos TEXT IS 'Apellidos value for the record',
    razon_social TEXT IS 'Name Legal value for the record',
    fecha_nacimiento TEXT IS 'Date Nacimiento value for the record',
    direccion TEXT IS 'Direccion value for the record',
    email TEXT IS 'Email value for the record',
    telefono TEXT IS 'Phone value for the record',
    pais_residencia TEXT IS 'Country Residencia value for the record',
    usuario_creacion TEXT IS 'User Creation value for the record',
    usuario_actualizacion TEXT IS 'User Update value for the record',
    version_registro TEXT IS 'Version Record value for the record',
    observaciones TEXT IS 'Notes value for the record',
    estado_registro TEXT IS 'Status Record value for the record',
    created_at TEXT IS 'Created At value for the record',
    updated_at TEXT IS 'Updated At value for the record'
);
