--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       CUMAD
-- DESCRIPCION:              Generated table for CUMAD.
-- Objetivo:                 Store operational data for CUMAD.
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
-- Program Name:             CUMAD

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE CUMAD
(
    id_cliente_operacion FOR COLUMN CUMAD01 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    tipo_registro FOR COLUMN CUMAD02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    secuencia FOR COLUMN CUMAD03 INTEGER
        NOT NULL WITH DEFAULT 0,
    tipo_persona FOR COLUMN CUMAD04 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    tipo_identificacion FOR COLUMN CUMAD05 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    numero_identificacion FOR COLUMN CUMAD06 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    nombres FOR COLUMN CUMAD07 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    apellidos FOR COLUMN CUMAD08 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    razon_social FOR COLUMN CUMAD09 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    fecha_nacimiento FOR COLUMN CUMAD10 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    direccion FOR COLUMN CUMAD11 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    email FOR COLUMN CUMAD12 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    telefono FOR COLUMN CUMAD13 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    pais_residencia FOR COLUMN CUMAD14 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN CUMAD15 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN CUMAD16 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN CUMAD17 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN CUMAD18 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN CUMAD19 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN CUMAD20 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN CUMAD21 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT CUMAD_PK PRIMARY KEY (
        id_cliente_operacion,
        tipo_registro,
        secuencia
    )
)
RCDFMT RCUMAD;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE CUMAD IS 'Generated table for CUMAD.';

LABEL ON TABLE CUMAD IS 'CUMAD table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN CUMAD
    (id_cliente_operacion IS 'Id Customer Operation field.');
COMMENT ON COLUMN CUMAD
    (tipo_registro IS 'Type Record field.');
COMMENT ON COLUMN CUMAD
    (secuencia IS 'Sequence field.');
COMMENT ON COLUMN CUMAD
    (tipo_persona IS 'Type Persona field.');
COMMENT ON COLUMN CUMAD
    (tipo_identificacion IS 'Type Identification field.');
COMMENT ON COLUMN CUMAD
    (numero_identificacion IS 'Number Identification field.');
COMMENT ON COLUMN CUMAD
    (nombres IS 'Nombres field.');
COMMENT ON COLUMN CUMAD
    (apellidos IS 'Apellidos field.');
COMMENT ON COLUMN CUMAD
    (razon_social IS 'Name Legal field.');
COMMENT ON COLUMN CUMAD
    (fecha_nacimiento IS 'Date Nacimiento field.');
COMMENT ON COLUMN CUMAD
    (direccion IS 'Direccion field.');
COMMENT ON COLUMN CUMAD
    (email IS 'Email field.');
COMMENT ON COLUMN CUMAD
    (telefono IS 'Phone field.');
COMMENT ON COLUMN CUMAD
    (pais_residencia IS 'Country Residencia field.');
COMMENT ON COLUMN CUMAD
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN CUMAD
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN CUMAD
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN CUMAD
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN CUMAD
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN CUMAD
    (created_at IS 'Created At field.');
COMMENT ON COLUMN CUMAD
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN CUMAD (
    id_cliente_operacion IS 'Id Customer Operation',
    tipo_registro IS 'Type Record',
    secuencia IS 'Sequence',
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

LABEL ON COLUMN CUMAD (
    id_cliente_operacion TEXT IS 'Id Customer Operation value for the record',
    tipo_registro TEXT IS 'Type Record value for the record',
    secuencia TEXT IS 'Sequence value for the record',
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
