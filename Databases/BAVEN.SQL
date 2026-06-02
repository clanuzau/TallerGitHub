--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       BAVEN
-- DESCRIPCION:              Generated table for BAVEN.
-- Objetivo:                 Store operational data for BAVEN.
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
-- Program Name:             BAVEN

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE BAVEN
(
    numero_proveedor FOR COLUMN BAVEN01 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    numero_identificacion FOR COLUMN BAVEN02 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    razon_social FOR COLUMN BAVEN03 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    email FOR COLUMN BAVEN04 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    telefono FOR COLUMN BAVEN05 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    monto_original FOR COLUMN BAVEN06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_pendiente FOR COLUMN BAVEN07 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    fecha_emision FOR COLUMN BAVEN08 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN BAVEN09 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    estado_cxp FOR COLUMN BAVEN10 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN BAVEN11 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN BAVEN12 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN BAVEN13 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN BAVEN14 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN BAVEN15 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN BAVEN16 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN BAVEN17 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT BAVEN_PK PRIMARY KEY (
        numero_proveedor
    )
)
RCDFMT RBAVEN;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE BAVEN IS 'Generated table for BAVEN.';

LABEL ON TABLE BAVEN IS 'BAVEN table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN BAVEN
    (numero_proveedor IS 'Number Vendor field.');
COMMENT ON COLUMN BAVEN
    (numero_identificacion IS 'Number Identification field.');
COMMENT ON COLUMN BAVEN
    (razon_social IS 'Name Legal field.');
COMMENT ON COLUMN BAVEN
    (email IS 'Email field.');
COMMENT ON COLUMN BAVEN
    (telefono IS 'Phone field.');
COMMENT ON COLUMN BAVEN
    (monto_original IS 'Amount Original field.');
COMMENT ON COLUMN BAVEN
    (saldo_pendiente IS 'Balance Pending field.');
COMMENT ON COLUMN BAVEN
    (fecha_emision IS 'Date Issue field.');
COMMENT ON COLUMN BAVEN
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN BAVEN
    (estado_cxp IS 'Status Cxp field.');
COMMENT ON COLUMN BAVEN
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN BAVEN
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN BAVEN
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN BAVEN
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN BAVEN
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN BAVEN
    (created_at IS 'Created At field.');
COMMENT ON COLUMN BAVEN
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN BAVEN (
    numero_proveedor IS 'Number Vendor',
    numero_identificacion IS 'Number Identification',
    razon_social IS 'Name Legal',
    email IS 'Email',
    telefono IS 'Phone',
    monto_original IS 'Amount Original',
    saldo_pendiente IS 'Balance Pending',
    fecha_emision IS 'Date Issue',
    fecha_vencimiento IS 'Date Due',
    estado_cxp IS 'Status Cxp',
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

LABEL ON COLUMN BAVEN (
    numero_proveedor TEXT IS 'Number Vendor value for the record',
    numero_identificacion TEXT IS 'Number Identification value for the record',
    razon_social TEXT IS 'Name Legal value for the record',
    email TEXT IS 'Email value for the record',
    telefono TEXT IS 'Phone value for the record',
    monto_original TEXT IS 'Amount Original value for the record',
    saldo_pendiente TEXT IS 'Balance Pending value for the record',
    fecha_emision TEXT IS 'Date Issue value for the record',
    fecha_vencimiento TEXT IS 'Date Due value for the record',
    estado_cxp TEXT IS 'Status Cxp value for the record',
    usuario_creacion TEXT IS 'User Creation value for the record',
    usuario_actualizacion TEXT IS 'User Update value for the record',
    version_registro TEXT IS 'Version Record value for the record',
    observaciones TEXT IS 'Notes value for the record',
    estado_registro TEXT IS 'Status Record value for the record',
    created_at TEXT IS 'Created At value for the record',
    updated_at TEXT IS 'Updated At value for the record'
);
