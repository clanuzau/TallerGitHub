--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       LCFMT
-- DESCRIPCION:              Generated table for LCFMT.
-- Objetivo:                 Store operational data for LCFMT.
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
-- Program Name:             LCFMT

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE LCFMT
(
    codigo_documento FOR COLUMN LCFMT01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    secuencia_de_texto FOR COLUMN LCFMT02 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    numero_linea FOR COLUMN LCFMT03 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    fecha_emision FOR COLUMN LCFMT04 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN LCFMT05 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_original FOR COLUMN LCFMT06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_actual FOR COLUMN LCFMT07 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    banco_corresponsal FOR COLUMN LCFMT08 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    pais_destino FOR COLUMN LCFMT09 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    estado_carta FOR COLUMN LCFMT10 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN LCFMT11 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN LCFMT12 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN LCFMT13 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN LCFMT14 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN LCFMT15 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN LCFMT16 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN LCFMT17 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT LCFMT_PK PRIMARY KEY (
        codigo_documento,
        secuencia_de_texto,
        numero_linea
    )
)
RCDFMT RLCFMT;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE LCFMT IS 'Generated table for LCFMT.';

LABEL ON TABLE LCFMT IS 'LCFMT table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN LCFMT
    (codigo_documento IS 'Code Document field.');
COMMENT ON COLUMN LCFMT
    (secuencia_de_texto IS 'Sequence De Text field.');
COMMENT ON COLUMN LCFMT
    (numero_linea IS 'Number Line field.');
COMMENT ON COLUMN LCFMT
    (fecha_emision IS 'Date Issue field.');
COMMENT ON COLUMN LCFMT
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN LCFMT
    (monto_original IS 'Amount Original field.');
COMMENT ON COLUMN LCFMT
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN LCFMT
    (banco_corresponsal IS 'Bank Correspondent field.');
COMMENT ON COLUMN LCFMT
    (pais_destino IS 'Country Destination field.');
COMMENT ON COLUMN LCFMT
    (estado_carta IS 'Status Letter field.');
COMMENT ON COLUMN LCFMT
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN LCFMT
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN LCFMT
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN LCFMT
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN LCFMT
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN LCFMT
    (created_at IS 'Created At field.');
COMMENT ON COLUMN LCFMT
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN LCFMT (
    codigo_documento IS 'Code Document',
    secuencia_de_texto IS 'Sequence De Text',
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

LABEL ON COLUMN LCFMT (
    codigo_documento TEXT IS 'Code Document value for the record',
    secuencia_de_texto TEXT IS 'Sequence De Text value for the record',
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
