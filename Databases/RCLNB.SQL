--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       RCLNB
-- DESCRIPCION:              Generated table for RCLNB.
-- Objetivo:                 Store operational data for RCLNB.
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
-- Program Name:             RCLNB

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE RCLNB
(
    codigo_banco FOR COLUMN RCLNB01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_sucursal FOR COLUMN RCLNB02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_moneda FOR COLUMN RCLNB03 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    cuenta_contable FOR COLUMN RCLNB04 VARCHAR(24)
        NOT NULL WITH DEFAULT '',
    numero_cuenta FOR COLUMN RCLNB05 VARCHAR(24)
        NOT NULL WITH DEFAULT '',
    fecha FOR COLUMN RCLNB06 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_apertura FOR COLUMN RCLNB07 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_ultima_transaccion FOR COLUMN RCLNB08 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    saldo_actual FOR COLUMN RCLNB09 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_disponible FOR COLUMN RCLNB10 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    limite_sobregiro FOR COLUMN RCLNB11 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    estado_cuenta FOR COLUMN RCLNB12 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN RCLNB13 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN RCLNB14 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN RCLNB15 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN RCLNB16 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN RCLNB17 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN RCLNB18 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN RCLNB19 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT RCLNB_PK PRIMARY KEY (
        codigo_banco,
        codigo_sucursal,
        codigo_moneda,
        cuenta_contable,
        numero_cuenta,
        fecha
    )
)
RCDFMT RRCLNB;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE RCLNB IS 'Generated table for RCLNB.';

LABEL ON TABLE RCLNB IS 'RCLNB table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN RCLNB
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN RCLNB
    (codigo_sucursal IS 'Code Branch field.');
COMMENT ON COLUMN RCLNB
    (codigo_moneda IS 'Code Currency field.');
COMMENT ON COLUMN RCLNB
    (cuenta_contable IS 'Account Ledger field.');
COMMENT ON COLUMN RCLNB
    (numero_cuenta IS 'Number Account field.');
COMMENT ON COLUMN RCLNB
    (fecha IS 'Date field.');
COMMENT ON COLUMN RCLNB
    (fecha_apertura IS 'Date Apertura field.');
COMMENT ON COLUMN RCLNB
    (fecha_ultima_transaccion IS 'Date Ultima Transaction field.');
COMMENT ON COLUMN RCLNB
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN RCLNB
    (saldo_disponible IS 'Balance Disponible field.');
COMMENT ON COLUMN RCLNB
    (limite_sobregiro IS 'Limite Sobregiro field.');
COMMENT ON COLUMN RCLNB
    (estado_cuenta IS 'Status Account field.');
COMMENT ON COLUMN RCLNB
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN RCLNB
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN RCLNB
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN RCLNB
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN RCLNB
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN RCLNB
    (created_at IS 'Created At field.');
COMMENT ON COLUMN RCLNB
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN RCLNB (
    codigo_banco IS 'Code Bank',
    codigo_sucursal IS 'Code Branch',
    codigo_moneda IS 'Code Currency',
    cuenta_contable IS 'Account Ledger',
    numero_cuenta IS 'Number Account',
    fecha IS 'Date',
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

LABEL ON COLUMN RCLNB (
    codigo_banco TEXT IS 'Code Bank value for the record',
    codigo_sucursal TEXT IS 'Code Branch value for the record',
    codigo_moneda TEXT IS 'Code Currency value for the record',
    cuenta_contable TEXT IS 'Account Ledger value for the record',
    numero_cuenta TEXT IS 'Number Account value for the record',
    fecha TEXT IS 'Date value for the record',
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
