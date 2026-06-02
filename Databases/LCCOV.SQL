--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       LCCOV
-- DESCRIPCION:              Generated table for LCCOV.
-- Objetivo:                 Store operational data for LCCOV.
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
-- Program Name:             LCCOV

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE LCCOV
(
    numero_carta_credito FOR COLUMN LCCOV01 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    secuencia FOR COLUMN LCCOV02 INTEGER
        NOT NULL WITH DEFAULT 0,
    fecha_emision FOR COLUMN LCCOV03 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN LCCOV04 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_original FOR COLUMN LCCOV05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_actual FOR COLUMN LCCOV06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    banco_corresponsal FOR COLUMN LCCOV07 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    pais_destino FOR COLUMN LCCOV08 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    estado_carta FOR COLUMN LCCOV09 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN LCCOV10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN LCCOV11 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN LCCOV12 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN LCCOV13 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN LCCOV14 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN LCCOV15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN LCCOV16 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT LCCOV_PK PRIMARY KEY (
        numero_carta_credito,
        secuencia
    )
)
RCDFMT RLCCOV;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE LCCOV IS 'Generated table for LCCOV.';

LABEL ON TABLE LCCOV IS 'LCCOV table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN LCCOV
    (numero_carta_credito IS 'Number Letter Credit field.');
COMMENT ON COLUMN LCCOV
    (secuencia IS 'Sequence field.');
COMMENT ON COLUMN LCCOV
    (fecha_emision IS 'Date Issue field.');
COMMENT ON COLUMN LCCOV
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN LCCOV
    (monto_original IS 'Amount Original field.');
COMMENT ON COLUMN LCCOV
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN LCCOV
    (banco_corresponsal IS 'Bank Correspondent field.');
COMMENT ON COLUMN LCCOV
    (pais_destino IS 'Country Destination field.');
COMMENT ON COLUMN LCCOV
    (estado_carta IS 'Status Letter field.');
COMMENT ON COLUMN LCCOV
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN LCCOV
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN LCCOV
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN LCCOV
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN LCCOV
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN LCCOV
    (created_at IS 'Created At field.');
COMMENT ON COLUMN LCCOV
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN LCCOV (
    numero_carta_credito IS 'Number Letter Credit',
    secuencia IS 'Sequence',
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

LABEL ON COLUMN LCCOV (
    numero_carta_credito TEXT IS 'Number Letter Credit value for the record',
    secuencia TEXT IS 'Sequence value for the record',
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
