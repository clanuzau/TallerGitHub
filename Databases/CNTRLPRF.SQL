--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       CNTRLPRF
-- DESCRIPCION:              Generated table for CNTRLPRF.
-- Objetivo:                 Store operational data for CNTRLPRF.
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
-- Program Name:             CNTRLPRF

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE CNTRLPRF
(
    codigo_banco FOR COLUMN CNTRLPRF01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    parametro FOR COLUMN CNTRLPRF02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_tabla FOR COLUMN CNTRLPRF03 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    fecha_operacion FOR COLUMN CNTRLPRF04 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto FOR COLUMN CNTRLPRF05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    beneficiario FOR COLUMN CNTRLPRF06 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    banco_destino FOR COLUMN CNTRLPRF07 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    canal_pago FOR COLUMN CNTRLPRF08 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    estado_pago FOR COLUMN CNTRLPRF09 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN CNTRLPRF10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN CNTRLPRF11 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN CNTRLPRF12 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN CNTRLPRF13 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN CNTRLPRF14 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN CNTRLPRF15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN CNTRLPRF16 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT CNTRLPRF_PK PRIMARY KEY (
        codigo_banco,
        parametro,
        codigo_tabla
    )
)
RCDFMT RCNTRLPRF;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE CNTRLPRF IS 'Generated table for CNTRLPRF.';

LABEL ON TABLE CNTRLPRF IS 'CNTRLPRF table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN CNTRLPRF
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN CNTRLPRF
    (parametro IS 'Parameter field.');
COMMENT ON COLUMN CNTRLPRF
    (codigo_tabla IS 'Code Table field.');
COMMENT ON COLUMN CNTRLPRF
    (fecha_operacion IS 'Date Operation field.');
COMMENT ON COLUMN CNTRLPRF
    (monto IS 'Amount field.');
COMMENT ON COLUMN CNTRLPRF
    (beneficiario IS 'Beneficiary field.');
COMMENT ON COLUMN CNTRLPRF
    (banco_destino IS 'Bank Destination field.');
COMMENT ON COLUMN CNTRLPRF
    (canal_pago IS 'Channel Payment field.');
COMMENT ON COLUMN CNTRLPRF
    (estado_pago IS 'Status Payment field.');
COMMENT ON COLUMN CNTRLPRF
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN CNTRLPRF
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN CNTRLPRF
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN CNTRLPRF
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN CNTRLPRF
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN CNTRLPRF
    (created_at IS 'Created At field.');
COMMENT ON COLUMN CNTRLPRF
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN CNTRLPRF (
    codigo_banco IS 'Code Bank',
    parametro IS 'Parameter',
    codigo_tabla IS 'Code Table',
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

LABEL ON COLUMN CNTRLPRF (
    codigo_banco TEXT IS 'Code Bank value for the record',
    parametro TEXT IS 'Parameter value for the record',
    codigo_tabla TEXT IS 'Code Table value for the record',
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
