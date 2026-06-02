--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       USERS
-- DESCRIPCION:              Generated table for USERS.
-- Objetivo:                 Store operational data for USERS.
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
-- Program Name:             USERS

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE USERS
(
    codigo_usuario FOR COLUMN USERS01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    menu FOR COLUMN USERS02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    opcion FOR COLUMN USERS03 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    rol FOR COLUMN USERS04 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    nivel_autorizacion FOR COLUMN USERS05 INTEGER
        NOT NULL WITH DEFAULT 0,
    permite_consulta FOR COLUMN USERS06 BOOLEAN
        NOT NULL WITH DEFAULT FALSE,
    permite_creacion FOR COLUMN USERS07 BOOLEAN
        NOT NULL WITH DEFAULT FALSE,
    permite_actualizacion FOR COLUMN USERS08 BOOLEAN
        NOT NULL WITH DEFAULT FALSE,
    permite_aprobacion FOR COLUMN USERS09 BOOLEAN
        NOT NULL WITH DEFAULT FALSE,
    usuario_creacion FOR COLUMN USERS10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN USERS11 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN USERS12 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN USERS13 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN USERS14 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN USERS15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN USERS16 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT USERS_PK PRIMARY KEY (
        codigo_usuario,
        menu,
        opcion
    )
)
RCDFMT RUSERS;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE USERS IS 'Generated table for USERS.';

LABEL ON TABLE USERS IS 'USERS table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN USERS
    (codigo_usuario IS 'Code User field.');
COMMENT ON COLUMN USERS
    (menu IS 'Menu field.');
COMMENT ON COLUMN USERS
    (opcion IS 'Opcion field.');
COMMENT ON COLUMN USERS
    (rol IS 'Role field.');
COMMENT ON COLUMN USERS
    (nivel_autorizacion IS 'Level Authorization field.');
COMMENT ON COLUMN USERS
    (permite_consulta IS 'Allows Inquiry field.');
COMMENT ON COLUMN USERS
    (permite_creacion IS 'Allows Creation field.');
COMMENT ON COLUMN USERS
    (permite_actualizacion IS 'Allows Update field.');
COMMENT ON COLUMN USERS
    (permite_aprobacion IS 'Allows Approval field.');
COMMENT ON COLUMN USERS
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN USERS
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN USERS
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN USERS
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN USERS
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN USERS
    (created_at IS 'Created At field.');
COMMENT ON COLUMN USERS
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN USERS (
    codigo_usuario IS 'Code User',
    menu IS 'Menu',
    opcion IS 'Opcion',
    rol IS 'Role',
    nivel_autorizacion IS 'Level Authorization',
    permite_consulta IS 'Allows Inquiry',
    permite_creacion IS 'Allows Creation',
    permite_actualizacion IS 'Allows Update',
    permite_aprobacion IS 'Allows Approval',
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

LABEL ON COLUMN USERS (
    codigo_usuario TEXT IS 'Code User value for the record',
    menu TEXT IS 'Menu value for the record',
    opcion TEXT IS 'Opcion value for the record',
    rol TEXT IS 'Role value for the record',
    nivel_autorizacion TEXT IS 'Level Authorization value for the record',
    permite_consulta TEXT IS 'Allows Inquiry value for the record',
    permite_creacion TEXT IS 'Allows Creation value for the record',
    permite_actualizacion TEXT IS 'Allows Update value for the record',
    permite_aprobacion TEXT IS 'Allows Approval value for the record',
    usuario_creacion TEXT IS 'User Creation value for the record',
    usuario_actualizacion TEXT IS 'User Update value for the record',
    version_registro TEXT IS 'Version Record value for the record',
    observaciones TEXT IS 'Notes value for the record',
    estado_registro TEXT IS 'Status Record value for the record',
    created_at TEXT IS 'Created At value for the record',
    updated_at TEXT IS 'Updated At value for the record'
);
