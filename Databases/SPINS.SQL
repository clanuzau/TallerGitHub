--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       SPINS
-- DESCRIPCION:              Generated table for SPINS.
-- Objetivo:                 Store operational data for SPINS.
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
-- Program Name:             SPINS

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE SPINS
(
    tipo_informacion FOR COLUMN SPINS01 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    cuenta_o_cliente FOR COLUMN SPINS02 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    secuencia FOR COLUMN SPINS03 INTEGER
        NOT NULL WITH DEFAULT 0,
    tipo_persona FOR COLUMN SPINS04 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    tipo_identificacion FOR COLUMN SPINS05 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    numero_identificacion FOR COLUMN SPINS06 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    nombres FOR COLUMN SPINS07 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    apellidos FOR COLUMN SPINS08 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    razon_social FOR COLUMN SPINS09 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    fecha_nacimiento FOR COLUMN SPINS10 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    direccion FOR COLUMN SPINS11 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    email FOR COLUMN SPINS12 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    telefono FOR COLUMN SPINS13 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    pais_residencia FOR COLUMN SPINS14 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN SPINS15 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN SPINS16 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN SPINS17 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN SPINS18 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN SPINS19 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN SPINS20 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN SPINS21 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT SPINS_PK PRIMARY KEY (
        tipo_informacion,
        cuenta_o_cliente,
        secuencia
    )
)
RCDFMT RSPINS;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE SPINS IS 'Generated table for SPINS.';

LABEL ON TABLE SPINS IS 'SPINS table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN SPINS
    (tipo_informacion IS 'Type Informacion field.');
COMMENT ON COLUMN SPINS
    (cuenta_o_cliente IS 'Account O Customer field.');
COMMENT ON COLUMN SPINS
    (secuencia IS 'Sequence field.');
COMMENT ON COLUMN SPINS
    (tipo_persona IS 'Type Persona field.');
COMMENT ON COLUMN SPINS
    (tipo_identificacion IS 'Type Identification field.');
COMMENT ON COLUMN SPINS
    (numero_identificacion IS 'Number Identification field.');
COMMENT ON COLUMN SPINS
    (nombres IS 'Nombres field.');
COMMENT ON COLUMN SPINS
    (apellidos IS 'Apellidos field.');
COMMENT ON COLUMN SPINS
    (razon_social IS 'Name Legal field.');
COMMENT ON COLUMN SPINS
    (fecha_nacimiento IS 'Date Nacimiento field.');
COMMENT ON COLUMN SPINS
    (direccion IS 'Direccion field.');
COMMENT ON COLUMN SPINS
    (email IS 'Email field.');
COMMENT ON COLUMN SPINS
    (telefono IS 'Phone field.');
COMMENT ON COLUMN SPINS
    (pais_residencia IS 'Country Residencia field.');
COMMENT ON COLUMN SPINS
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN SPINS
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN SPINS
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN SPINS
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN SPINS
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN SPINS
    (created_at IS 'Created At field.');
COMMENT ON COLUMN SPINS
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN SPINS (
    tipo_informacion IS 'Type Informacion',
    cuenta_o_cliente IS 'Account O Customer',
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

LABEL ON COLUMN SPINS (
    tipo_informacion TEXT IS 'Type Informacion value for the record',
    cuenta_o_cliente TEXT IS 'Account O Customer value for the record',
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
