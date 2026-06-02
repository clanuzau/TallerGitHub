--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       POSWF
-- DESCRIPCION:              Generated table for POSWF.
-- Objetivo:                 Store operational data for POSWF.
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
-- Program Name:             POSWF

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE POSWF
(
    codigo_banco FOR COLUMN POSWF01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_moneda FOR COLUMN POSWF02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    id_cliente FOR COLUMN POSWF03 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    tipo_registro FOR COLUMN POSWF04 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    numero_cuenta FOR COLUMN POSWF05 VARCHAR(24)
        NOT NULL WITH DEFAULT '',
    numero_referencia FOR COLUMN POSWF06 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    monto FOR COLUMN POSWF07 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    fecha_operacion FOR COLUMN POSWF08 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    beneficiario FOR COLUMN POSWF09 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    banco_destino FOR COLUMN POSWF10 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    canal_pago FOR COLUMN POSWF11 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    estado_pago FOR COLUMN POSWF12 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN POSWF13 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN POSWF14 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN POSWF15 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN POSWF16 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN POSWF17 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN POSWF18 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN POSWF19 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT POSWF_PK PRIMARY KEY (
        codigo_banco,
        codigo_moneda,
        id_cliente,
        tipo_registro,
        numero_cuenta,
        numero_referencia,
        monto
    )
)
RCDFMT RPOSWF;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE POSWF IS 'Generated table for POSWF.';

LABEL ON TABLE POSWF IS 'POSWF table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN POSWF
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN POSWF
    (codigo_moneda IS 'Code Currency field.');
COMMENT ON COLUMN POSWF
    (id_cliente IS 'Id Customer field.');
COMMENT ON COLUMN POSWF
    (tipo_registro IS 'Type Record field.');
COMMENT ON COLUMN POSWF
    (numero_cuenta IS 'Number Account field.');
COMMENT ON COLUMN POSWF
    (numero_referencia IS 'Number Reference field.');
COMMENT ON COLUMN POSWF
    (monto IS 'Amount field.');
COMMENT ON COLUMN POSWF
    (fecha_operacion IS 'Date Operation field.');
COMMENT ON COLUMN POSWF
    (beneficiario IS 'Beneficiary field.');
COMMENT ON COLUMN POSWF
    (banco_destino IS 'Bank Destination field.');
COMMENT ON COLUMN POSWF
    (canal_pago IS 'Channel Payment field.');
COMMENT ON COLUMN POSWF
    (estado_pago IS 'Status Payment field.');
COMMENT ON COLUMN POSWF
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN POSWF
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN POSWF
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN POSWF
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN POSWF
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN POSWF
    (created_at IS 'Created At field.');
COMMENT ON COLUMN POSWF
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN POSWF (
    codigo_banco IS 'Code Bank',
    codigo_moneda IS 'Code Currency',
    id_cliente IS 'Id Customer',
    tipo_registro IS 'Type Record',
    numero_cuenta IS 'Number Account',
    numero_referencia IS 'Number Reference',
    monto IS 'Amount',
    fecha_operacion IS 'Date Operation',
    beneficiario IS 'Beneficiary',
    banco_destino IS 'Bank Destination',
    canal_pago IS 'Channel Payment',
    estado_pago IS 'Status Payment',
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

LABEL ON COLUMN POSWF (
    codigo_banco TEXT IS 'Code Bank value for the record',
    codigo_moneda TEXT IS 'Code Currency value for the record',
    id_cliente TEXT IS 'Id Customer value for the record',
    tipo_registro TEXT IS 'Type Record value for the record',
    numero_cuenta TEXT IS 'Number Account value for the record',
    numero_referencia TEXT IS 'Number Reference value for the record',
    monto TEXT IS 'Amount value for the record',
    fecha_operacion TEXT IS 'Date Operation value for the record',
    beneficiario TEXT IS 'Beneficiary value for the record',
    banco_destino TEXT IS 'Bank Destination value for the record',
    canal_pago TEXT IS 'Channel Payment value for the record',
    estado_pago TEXT IS 'Status Payment value for the record',
    usuario_creacion TEXT IS 'User Creation value for the record',
    usuario_actualizacion TEXT IS 'User Update value for the record',
    version_registro TEXT IS 'Version Record value for the record',
    observaciones TEXT IS 'Notes value for the record',
    estado_registro TEXT IS 'Status Record value for the record',
    created_at TEXT IS 'Created At value for the record',
    updated_at TEXT IS 'Updated At value for the record'
);
