--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       CMRIN
-- DESCRIPCION:              Generated table for CMRIN.
-- Objetivo:                 Store operational data for CMRIN.
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
-- Program Name:             CMRIN

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE CMRIN
(
    codigo_banco FOR COLUMN CMRIN01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    sucursal_moneda FOR COLUMN CMRIN02 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    numero_cuenta FOR COLUMN CMRIN03 VARCHAR(24)
        NOT NULL WITH DEFAULT '',
    monto FOR COLUMN CMRIN04 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    fecha_apertura FOR COLUMN CMRIN05 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_ultima_transaccion FOR COLUMN CMRIN06 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    saldo_actual FOR COLUMN CMRIN07 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_disponible FOR COLUMN CMRIN08 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    limite_sobregiro FOR COLUMN CMRIN09 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    estado_cuenta FOR COLUMN CMRIN10 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN CMRIN11 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN CMRIN12 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN CMRIN13 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN CMRIN14 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN CMRIN15 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN CMRIN16 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN CMRIN17 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT CMRIN_PK PRIMARY KEY (
        codigo_banco,
        sucursal_moneda,
        numero_cuenta,
        monto
    )
)
RCDFMT RCMRIN;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE CMRIN IS 'Generated table for CMRIN.';

LABEL ON TABLE CMRIN IS 'CMRIN table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN CMRIN
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN CMRIN
    (sucursal_moneda IS 'Branch Currency field.');
COMMENT ON COLUMN CMRIN
    (numero_cuenta IS 'Number Account field.');
COMMENT ON COLUMN CMRIN
    (monto IS 'Amount field.');
COMMENT ON COLUMN CMRIN
    (fecha_apertura IS 'Date Apertura field.');
COMMENT ON COLUMN CMRIN
    (fecha_ultima_transaccion IS 'Date Ultima Transaction field.');
COMMENT ON COLUMN CMRIN
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN CMRIN
    (saldo_disponible IS 'Balance Disponible field.');
COMMENT ON COLUMN CMRIN
    (limite_sobregiro IS 'Limite Sobregiro field.');
COMMENT ON COLUMN CMRIN
    (estado_cuenta IS 'Status Account field.');
COMMENT ON COLUMN CMRIN
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN CMRIN
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN CMRIN
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN CMRIN
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN CMRIN
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN CMRIN
    (created_at IS 'Created At field.');
COMMENT ON COLUMN CMRIN
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN CMRIN (
    codigo_banco IS 'Code Bank',
    sucursal_moneda IS 'Branch Currency',
    numero_cuenta IS 'Number Account',
    monto IS 'Amount',
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

LABEL ON COLUMN CMRIN (
    codigo_banco TEXT IS 'Code Bank value for the record',
    sucursal_moneda TEXT IS 'Branch Currency value for the record',
    numero_cuenta TEXT IS 'Number Account value for the record',
    monto TEXT IS 'Amount value for the record',
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
