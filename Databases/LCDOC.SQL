--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       LCDOC
-- DESCRIPCION:              Generated table for LCDOC.
-- Objetivo:                 Store operational data for LCDOC.
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
-- Program Name:             LCDOC

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE LCDOC
(
    numero_carta_credito FOR COLUMN LCDOC01 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    tipo_registro FOR COLUMN LCDOC02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_banco FOR COLUMN LCDOC03 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_documento FOR COLUMN LCDOC04 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    numero_linea FOR COLUMN LCDOC05 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    fecha_emision FOR COLUMN LCDOC06 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN LCDOC07 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_original FOR COLUMN LCDOC08 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_actual FOR COLUMN LCDOC09 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    banco_corresponsal FOR COLUMN LCDOC10 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    pais_destino FOR COLUMN LCDOC11 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    estado_carta FOR COLUMN LCDOC12 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN LCDOC13 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN LCDOC14 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN LCDOC15 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN LCDOC16 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN LCDOC17 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN LCDOC18 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN LCDOC19 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT LCDOC_PK PRIMARY KEY (
        numero_carta_credito,
        tipo_registro,
        codigo_banco,
        codigo_documento,
        numero_linea
    )
)
RCDFMT RLCDOC;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE LCDOC IS 'Generated table for LCDOC.';

LABEL ON TABLE LCDOC IS 'LCDOC table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN LCDOC
    (numero_carta_credito IS 'Number Letter Credit field.');
COMMENT ON COLUMN LCDOC
    (tipo_registro IS 'Type Record field.');
COMMENT ON COLUMN LCDOC
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN LCDOC
    (codigo_documento IS 'Code Document field.');
COMMENT ON COLUMN LCDOC
    (numero_linea IS 'Number Line field.');
COMMENT ON COLUMN LCDOC
    (fecha_emision IS 'Date Issue field.');
COMMENT ON COLUMN LCDOC
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN LCDOC
    (monto_original IS 'Amount Original field.');
COMMENT ON COLUMN LCDOC
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN LCDOC
    (banco_corresponsal IS 'Bank Correspondent field.');
COMMENT ON COLUMN LCDOC
    (pais_destino IS 'Country Destination field.');
COMMENT ON COLUMN LCDOC
    (estado_carta IS 'Status Letter field.');
COMMENT ON COLUMN LCDOC
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN LCDOC
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN LCDOC
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN LCDOC
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN LCDOC
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN LCDOC
    (created_at IS 'Created At field.');
COMMENT ON COLUMN LCDOC
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN LCDOC (
    numero_carta_credito IS 'Number Letter Credit',
    tipo_registro IS 'Type Record',
    codigo_banco IS 'Code Bank',
    codigo_documento IS 'Code Document',
    numero_linea IS 'Number Line',
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

LABEL ON COLUMN LCDOC (
    numero_carta_credito TEXT IS 'Number Letter Credit value for the record',
    tipo_registro TEXT IS 'Type Record value for the record',
    codigo_banco TEXT IS 'Code Bank value for the record',
    codigo_documento TEXT IS 'Code Document value for the record',
    numero_linea TEXT IS 'Number Line value for the record',
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
