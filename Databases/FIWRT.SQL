--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       FIWRT
-- DESCRIPCION:              Generated table for FIWRT.
-- Objetivo:                 Store operational data for FIWRT.
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
-- Program Name:             FIWRT

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE FIWRT
(
    codigo_banco FOR COLUMN FIWRT01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    numero_transferencia FOR COLUMN FIWRT02 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    fecha_operacion FOR COLUMN FIWRT03 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto FOR COLUMN FIWRT04 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    beneficiario FOR COLUMN FIWRT05 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    banco_destino FOR COLUMN FIWRT06 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    canal_pago FOR COLUMN FIWRT07 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    estado_pago FOR COLUMN FIWRT08 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN FIWRT09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN FIWRT10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN FIWRT11 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN FIWRT12 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN FIWRT13 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN FIWRT14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN FIWRT15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT FIWRT_PK PRIMARY KEY (
        codigo_banco,
        numero_transferencia
    )
)
RCDFMT RFIWRT;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE FIWRT IS 'Generated table for FIWRT.';

LABEL ON TABLE FIWRT IS 'FIWRT table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN FIWRT
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN FIWRT
    (numero_transferencia IS 'Number Transfer field.');
COMMENT ON COLUMN FIWRT
    (fecha_operacion IS 'Date Operation field.');
COMMENT ON COLUMN FIWRT
    (monto IS 'Amount field.');
COMMENT ON COLUMN FIWRT
    (beneficiario IS 'Beneficiary field.');
COMMENT ON COLUMN FIWRT
    (banco_destino IS 'Bank Destination field.');
COMMENT ON COLUMN FIWRT
    (canal_pago IS 'Channel Payment field.');
COMMENT ON COLUMN FIWRT
    (estado_pago IS 'Status Payment field.');
COMMENT ON COLUMN FIWRT
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN FIWRT
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN FIWRT
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN FIWRT
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN FIWRT
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN FIWRT
    (created_at IS 'Created At field.');
COMMENT ON COLUMN FIWRT
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN FIWRT (
    codigo_banco IS 'Code Bank',
    numero_transferencia IS 'Number Transfer',
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

LABEL ON COLUMN FIWRT (
    codigo_banco TEXT IS 'Code Bank value for the record',
    numero_transferencia TEXT IS 'Number Transfer value for the record',
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
