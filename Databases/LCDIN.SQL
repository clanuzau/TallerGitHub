--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       LCDIN
-- DESCRIPCION:              Generated table for LCDIN.
-- Objetivo:                 Store operational data for LCDIN.
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
-- Program Name:             LCDIN

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE LCDIN
(
    numero_carta_credito FOR COLUMN LCDIN01 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    secuencia FOR COLUMN LCDIN02 INTEGER
        NOT NULL WITH DEFAULT 0,
    fecha_emision FOR COLUMN LCDIN03 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN LCDIN04 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_original FOR COLUMN LCDIN05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_actual FOR COLUMN LCDIN06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    banco_corresponsal FOR COLUMN LCDIN07 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    pais_destino FOR COLUMN LCDIN08 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    estado_carta FOR COLUMN LCDIN09 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN LCDIN10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN LCDIN11 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN LCDIN12 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN LCDIN13 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN LCDIN14 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN LCDIN15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN LCDIN16 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT LCDIN_PK PRIMARY KEY (
        numero_carta_credito,
        secuencia
    )
)
RCDFMT RLCDIN;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE LCDIN IS 'Generated table for LCDIN.';

LABEL ON TABLE LCDIN IS 'LCDIN table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN LCDIN
    (numero_carta_credito IS 'Number Letter Credit field.');
COMMENT ON COLUMN LCDIN
    (secuencia IS 'Sequence field.');
COMMENT ON COLUMN LCDIN
    (fecha_emision IS 'Date Issue field.');
COMMENT ON COLUMN LCDIN
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN LCDIN
    (monto_original IS 'Amount Original field.');
COMMENT ON COLUMN LCDIN
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN LCDIN
    (banco_corresponsal IS 'Bank Correspondent field.');
COMMENT ON COLUMN LCDIN
    (pais_destino IS 'Country Destination field.');
COMMENT ON COLUMN LCDIN
    (estado_carta IS 'Status Letter field.');
COMMENT ON COLUMN LCDIN
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN LCDIN
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN LCDIN
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN LCDIN
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN LCDIN
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN LCDIN
    (created_at IS 'Created At field.');
COMMENT ON COLUMN LCDIN
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN LCDIN (
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

LABEL ON COLUMN LCDIN (
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
