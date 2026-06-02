--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       PBTRN
-- DESCRIPCION:              Generated table for PBTRN.
-- Objetivo:                 Store operational data for PBTRN.
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
-- Program Name:             PBTRN

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE PBTRN
(
    numero_cuenta FOR COLUMN PBTRN01 VARCHAR(24)
        NOT NULL WITH DEFAULT '',
    fecha FOR COLUMN PBTRN02 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    hora FOR COLUMN PBTRN03 TIME
        NOT NULL WITH DEFAULT CURRENT_TIME,
    fecha_apertura FOR COLUMN PBTRN04 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_ultima_transaccion FOR COLUMN PBTRN05 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    saldo_actual FOR COLUMN PBTRN06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_disponible FOR COLUMN PBTRN07 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    limite_sobregiro FOR COLUMN PBTRN08 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    estado_cuenta FOR COLUMN PBTRN09 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN PBTRN10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN PBTRN11 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN PBTRN12 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN PBTRN13 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN PBTRN14 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN PBTRN15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN PBTRN16 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT PBTRN_PK PRIMARY KEY (
        numero_cuenta,
        fecha,
        hora
    )
)
RCDFMT RPBTRN;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE PBTRN IS 'Generated table for PBTRN.';

LABEL ON TABLE PBTRN IS 'PBTRN table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN PBTRN
    (numero_cuenta IS 'Number Account field.');
COMMENT ON COLUMN PBTRN
    (fecha IS 'Date field.');
COMMENT ON COLUMN PBTRN
    (hora IS 'Time field.');
COMMENT ON COLUMN PBTRN
    (fecha_apertura IS 'Date Apertura field.');
COMMENT ON COLUMN PBTRN
    (fecha_ultima_transaccion IS 'Date Ultima Transaction field.');
COMMENT ON COLUMN PBTRN
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN PBTRN
    (saldo_disponible IS 'Balance Disponible field.');
COMMENT ON COLUMN PBTRN
    (limite_sobregiro IS 'Limite Sobregiro field.');
COMMENT ON COLUMN PBTRN
    (estado_cuenta IS 'Status Account field.');
COMMENT ON COLUMN PBTRN
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN PBTRN
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN PBTRN
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN PBTRN
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN PBTRN
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN PBTRN
    (created_at IS 'Created At field.');
COMMENT ON COLUMN PBTRN
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN PBTRN (
    numero_cuenta IS 'Number Account',
    fecha IS 'Date',
    hora IS 'Time',
    fecha_apertura IS 'Date Apertura',
    fecha_ultima_transaccion IS 'Date Ultima Transaction',
    saldo_actual IS 'Balance Actual',
    saldo_disponible IS 'Balance Disponible',
    limite_sobregiro IS 'Limite Sobregiro',
    estado_cuenta IS 'Status Account',
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

LABEL ON COLUMN PBTRN (
    numero_cuenta TEXT IS 'Number Account value for the record',
    fecha TEXT IS 'Date value for the record',
    hora TEXT IS 'Time value for the record',
    fecha_apertura TEXT IS 'Date Apertura value for the record',
    fecha_ultima_transaccion TEXT IS 'Date Ultima Transaction value for the re',
    saldo_actual TEXT IS 'Balance Actual value for the record',
    saldo_disponible TEXT IS 'Balance Disponible value for the record',
    limite_sobregiro TEXT IS 'Limite Sobregiro value for the record',
    estado_cuenta TEXT IS 'Status Account value for the record',
    usuario_creacion TEXT IS 'User Creation value for the record',
    usuario_actualizacion TEXT IS 'User Update value for the record',
    version_registro TEXT IS 'Version Record value for the record',
    observaciones TEXT IS 'Notes value for the record',
    estado_registro TEXT IS 'Status Record value for the record',
    created_at TEXT IS 'Created At value for the record',
    updated_at TEXT IS 'Updated At value for the record'
);
