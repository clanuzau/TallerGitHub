--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       SWITF
-- DESCRIPCION:              Generated table for SWITF.
-- Objetivo:                 Store operational data for SWITF.
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
-- Program Name:             SWITF

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE SWITF
(
    codigo_banco FOR COLUMN SWITF01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    numero_referencia FOR COLUMN SWITF02 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    formato_swift FOR COLUMN SWITF03 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    fecha_operacion FOR COLUMN SWITF04 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto FOR COLUMN SWITF05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    beneficiario FOR COLUMN SWITF06 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    banco_destino FOR COLUMN SWITF07 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    canal_pago FOR COLUMN SWITF08 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    estado_pago FOR COLUMN SWITF09 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN SWITF10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN SWITF11 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN SWITF12 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN SWITF13 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN SWITF14 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN SWITF15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN SWITF16 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT SWITF_PK PRIMARY KEY (
        codigo_banco,
        numero_referencia,
        formato_swift
    )
)
RCDFMT RSWITF;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE SWITF IS 'Generated table for SWITF.';

LABEL ON TABLE SWITF IS 'SWITF table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN SWITF
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN SWITF
    (numero_referencia IS 'Number Reference field.');
COMMENT ON COLUMN SWITF
    (formato_swift IS 'Format Swift field.');
COMMENT ON COLUMN SWITF
    (fecha_operacion IS 'Date Operation field.');
COMMENT ON COLUMN SWITF
    (monto IS 'Amount field.');
COMMENT ON COLUMN SWITF
    (beneficiario IS 'Beneficiary field.');
COMMENT ON COLUMN SWITF
    (banco_destino IS 'Bank Destination field.');
COMMENT ON COLUMN SWITF
    (canal_pago IS 'Channel Payment field.');
COMMENT ON COLUMN SWITF
    (estado_pago IS 'Status Payment field.');
COMMENT ON COLUMN SWITF
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN SWITF
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN SWITF
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN SWITF
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN SWITF
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN SWITF
    (created_at IS 'Created At field.');
COMMENT ON COLUMN SWITF
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN SWITF (
    codigo_banco IS 'Code Bank',
    numero_referencia IS 'Number Reference',
    formato_swift IS 'Format Swift',
    fecha_operacion IS 'Date Operation',
    monto IS 'Amount',
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

LABEL ON COLUMN SWITF (
    codigo_banco TEXT IS 'Code Bank value for the record',
    numero_referencia TEXT IS 'Number Reference value for the record',
    formato_swift TEXT IS 'Format Swift value for the record',
    fecha_operacion TEXT IS 'Date Operation value for the record',
    monto TEXT IS 'Amount value for the record',
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
