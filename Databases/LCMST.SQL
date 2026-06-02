--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       LCMST
-- DESCRIPCION:              Generated table for LCMST.
-- Objetivo:                 Store operational data for LCMST.
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
-- Program Name:             LCMST

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE LCMST
(
    id FOR COLUMN LCMST01 BIGINT
        NOT NULL WITH DEFAULT 0,
    fecha_emision FOR COLUMN LCMST02 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN LCMST03 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_original FOR COLUMN LCMST04 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_actual FOR COLUMN LCMST05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    banco_corresponsal FOR COLUMN LCMST06 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    pais_destino FOR COLUMN LCMST07 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    estado_carta FOR COLUMN LCMST08 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN LCMST09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN LCMST10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN LCMST11 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN LCMST12 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN LCMST13 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN LCMST14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN LCMST15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT LCMST_PK PRIMARY KEY (
        id
    )
)
RCDFMT RLCMST;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE LCMST IS 'Generated table for LCMST.';

LABEL ON TABLE LCMST IS 'LCMST table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN LCMST
    (id IS 'Id field.');
COMMENT ON COLUMN LCMST
    (fecha_emision IS 'Date Issue field.');
COMMENT ON COLUMN LCMST
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN LCMST
    (monto_original IS 'Amount Original field.');
COMMENT ON COLUMN LCMST
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN LCMST
    (banco_corresponsal IS 'Bank Correspondent field.');
COMMENT ON COLUMN LCMST
    (pais_destino IS 'Country Destination field.');
COMMENT ON COLUMN LCMST
    (estado_carta IS 'Status Letter field.');
COMMENT ON COLUMN LCMST
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN LCMST
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN LCMST
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN LCMST
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN LCMST
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN LCMST
    (created_at IS 'Created At field.');
COMMENT ON COLUMN LCMST
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN LCMST (
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

LABEL ON COLUMN LCMST (
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
