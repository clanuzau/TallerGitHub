--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       CNTRLLCP
-- DESCRIPCION:              Generated table for CNTRLLCP.
-- Objetivo:                 Store operational data for CNTRLLCP.
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
-- Program Name:             CNTRLLCP

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE CNTRLLCP
(
    codigo_banco FOR COLUMN CNTRLLCP01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    lcrparm FOR COLUMN CNTRLLCP02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    fecha_emision FOR COLUMN CNTRLLCP03 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN CNTRLLCP04 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_original FOR COLUMN CNTRLLCP05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_actual FOR COLUMN CNTRLLCP06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    banco_corresponsal FOR COLUMN CNTRLLCP07 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    pais_destino FOR COLUMN CNTRLLCP08 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    estado_carta FOR COLUMN CNTRLLCP09 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN CNTRLLCP10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN CNTRLLCP11 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN CNTRLLCP12 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN CNTRLLCP13 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN CNTRLLCP14 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN CNTRLLCP15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN CNTRLLCP16 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT CNTRLLCP_PK PRIMARY KEY (
        codigo_banco,
        lcrparm
    )
)
RCDFMT RCNTRLLCP;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE CNTRLLCP IS 'Generated table for CNTRLLCP.';

LABEL ON TABLE CNTRLLCP IS 'CNTRLLCP table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN CNTRLLCP
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN CNTRLLCP
    (lcrparm IS 'Lcrparm field.');
COMMENT ON COLUMN CNTRLLCP
    (fecha_emision IS 'Date Issue field.');
COMMENT ON COLUMN CNTRLLCP
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN CNTRLLCP
    (monto_original IS 'Amount Original field.');
COMMENT ON COLUMN CNTRLLCP
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN CNTRLLCP
    (banco_corresponsal IS 'Bank Correspondent field.');
COMMENT ON COLUMN CNTRLLCP
    (pais_destino IS 'Country Destination field.');
COMMENT ON COLUMN CNTRLLCP
    (estado_carta IS 'Status Letter field.');
COMMENT ON COLUMN CNTRLLCP
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN CNTRLLCP
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN CNTRLLCP
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN CNTRLLCP
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN CNTRLLCP
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN CNTRLLCP
    (created_at IS 'Created At field.');
COMMENT ON COLUMN CNTRLLCP
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN CNTRLLCP (
    codigo_banco IS 'Code Bank',
    lcrparm IS 'Lcrparm',
    fecha_emision IS 'Date Issue',
    fecha_vencimiento IS 'Date Due',
    monto_original IS 'Amount Original',
    saldo_actual IS 'Balance Actual',
    banco_corresponsal IS 'Bank Correspondent',
    pais_destino IS 'Country Destination',
    estado_carta IS 'Status Letter',
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

LABEL ON COLUMN CNTRLLCP (
    codigo_banco TEXT IS 'Code Bank value for the record',
    lcrparm TEXT IS 'Lcrparm value for the record',
    fecha_emision TEXT IS 'Date Issue value for the record',
    fecha_vencimiento TEXT IS 'Date Due value for the record',
    monto_original TEXT IS 'Amount Original value for the record',
    saldo_actual TEXT IS 'Balance Actual value for the record',
    banco_corresponsal TEXT IS 'Bank Correspondent value for the record',
    pais_destino TEXT IS 'Country Destination value for the record',
    estado_carta TEXT IS 'Status Letter value for the record',
    usuario_creacion TEXT IS 'User Creation value for the record',
    usuario_actualizacion TEXT IS 'User Update value for the record',
    version_registro TEXT IS 'Version Record value for the record',
    observaciones TEXT IS 'Notes value for the record',
    estado_registro TEXT IS 'Status Record value for the record',
    created_at TEXT IS 'Created At value for the record',
    updated_at TEXT IS 'Updated At value for the record'
);
