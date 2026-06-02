--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       OFMST
-- DESCRIPCION:              Generated table for OFMST.
-- Objetivo:                 Store operational data for OFMST.
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
-- Program Name:             OFMST

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE OFMST
(
    codigo_banco FOR COLUMN OFMST01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_sucursal FOR COLUMN OFMST02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    numero_cheque FOR COLUMN OFMST03 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    fecha_apertura FOR COLUMN OFMST04 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_ultima_transaccion FOR COLUMN OFMST05 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    saldo_actual FOR COLUMN OFMST06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_disponible FOR COLUMN OFMST07 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    limite_sobregiro FOR COLUMN OFMST08 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    estado_cuenta FOR COLUMN OFMST09 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN OFMST10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN OFMST11 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN OFMST12 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN OFMST13 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN OFMST14 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN OFMST15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN OFMST16 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT OFMST_PK PRIMARY KEY (
        codigo_banco,
        codigo_sucursal,
        numero_cheque
    )
)
RCDFMT ROFMST;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE OFMST IS 'Generated table for OFMST.';

LABEL ON TABLE OFMST IS 'OFMST table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN OFMST
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN OFMST
    (codigo_sucursal IS 'Code Branch field.');
COMMENT ON COLUMN OFMST
    (numero_cheque IS 'Number Check field.');
COMMENT ON COLUMN OFMST
    (fecha_apertura IS 'Date Apertura field.');
COMMENT ON COLUMN OFMST
    (fecha_ultima_transaccion IS 'Date Ultima Transaction field.');
COMMENT ON COLUMN OFMST
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN OFMST
    (saldo_disponible IS 'Balance Disponible field.');
COMMENT ON COLUMN OFMST
    (limite_sobregiro IS 'Limite Sobregiro field.');
COMMENT ON COLUMN OFMST
    (estado_cuenta IS 'Status Account field.');
COMMENT ON COLUMN OFMST
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN OFMST
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN OFMST
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN OFMST
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN OFMST
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN OFMST
    (created_at IS 'Created At field.');
COMMENT ON COLUMN OFMST
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN OFMST (
    codigo_banco IS 'Code Bank',
    codigo_sucursal IS 'Code Branch',
    numero_cheque IS 'Number Check',
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

LABEL ON COLUMN OFMST (
    codigo_banco TEXT IS 'Code Bank value for the record',
    codigo_sucursal TEXT IS 'Code Branch value for the record',
    numero_cheque TEXT IS 'Number Check value for the record',
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
