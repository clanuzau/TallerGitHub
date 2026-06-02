--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       LCSTA
-- DESCRIPCION:              Generated table for LCSTA.
-- Objetivo:                 Store operational data for LCSTA.
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
-- Program Name:             LCSTA

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE LCSTA
(
    id FOR COLUMN LCSTA01 BIGINT
        NOT NULL WITH DEFAULT 0,
    fecha_emision FOR COLUMN LCSTA02 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN LCSTA03 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_original FOR COLUMN LCSTA04 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_actual FOR COLUMN LCSTA05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    banco_corresponsal FOR COLUMN LCSTA06 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    pais_destino FOR COLUMN LCSTA07 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    estado_carta FOR COLUMN LCSTA08 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN LCSTA09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN LCSTA10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN LCSTA11 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN LCSTA12 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN LCSTA13 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN LCSTA14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN LCSTA15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT LCSTA_PK PRIMARY KEY (
        id
    )
)
RCDFMT RLCSTA;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE LCSTA IS 'Generated table for LCSTA.';

LABEL ON TABLE LCSTA IS 'LCSTA table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN LCSTA
    (id IS 'Id field.');
COMMENT ON COLUMN LCSTA
    (fecha_emision IS 'Date Issue field.');
COMMENT ON COLUMN LCSTA
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN LCSTA
    (monto_original IS 'Amount Original field.');
COMMENT ON COLUMN LCSTA
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN LCSTA
    (banco_corresponsal IS 'Bank Correspondent field.');
COMMENT ON COLUMN LCSTA
    (pais_destino IS 'Country Destination field.');
COMMENT ON COLUMN LCSTA
    (estado_carta IS 'Status Letter field.');
COMMENT ON COLUMN LCSTA
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN LCSTA
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN LCSTA
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN LCSTA
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN LCSTA
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN LCSTA
    (created_at IS 'Created At field.');
COMMENT ON COLUMN LCSTA
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN LCSTA (
    id IS 'Id',
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

LABEL ON COLUMN LCSTA (
    id TEXT IS 'Id value for the record',
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
