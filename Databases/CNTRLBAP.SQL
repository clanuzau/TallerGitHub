--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       CNTRLBAP
-- DESCRIPCION:              Generated table for CNTRLBAP.
-- Objetivo:                 Store operational data for CNTRLBAP.
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
-- Program Name:             CNTRLBAP

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE CNTRLBAP
(
    codigo_banco FOR COLUMN CNTRLBAP01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_moneda FOR COLUMN CNTRLBAP02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    numero_identificacion FOR COLUMN CNTRLBAP03 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    razon_social FOR COLUMN CNTRLBAP04 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    email FOR COLUMN CNTRLBAP05 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    telefono FOR COLUMN CNTRLBAP06 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    monto_original FOR COLUMN CNTRLBAP07 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_pendiente FOR COLUMN CNTRLBAP08 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    fecha_emision FOR COLUMN CNTRLBAP09 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN CNTRLBAP10 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    estado_cxp FOR COLUMN CNTRLBAP11 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN CNTRLBAP12 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN CNTRLBAP13 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN CNTRLBAP14 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN CNTRLBAP15 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN CNTRLBAP16 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN CNTRLBAP17 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN CNTRLBAP18 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT CNTRLBAP_PK PRIMARY KEY (
        codigo_banco,
        codigo_moneda
    )
)
RCDFMT RCNTRLBAP;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE CNTRLBAP IS 'Generated table for CNTRLBAP.';

LABEL ON TABLE CNTRLBAP IS 'CNTRLBAP table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN CNTRLBAP
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN CNTRLBAP
    (codigo_moneda IS 'Code Currency field.');
COMMENT ON COLUMN CNTRLBAP
    (numero_identificacion IS 'Number Identification field.');
COMMENT ON COLUMN CNTRLBAP
    (razon_social IS 'Name Legal field.');
COMMENT ON COLUMN CNTRLBAP
    (email IS 'Email field.');
COMMENT ON COLUMN CNTRLBAP
    (telefono IS 'Phone field.');
COMMENT ON COLUMN CNTRLBAP
    (monto_original IS 'Amount Original field.');
COMMENT ON COLUMN CNTRLBAP
    (saldo_pendiente IS 'Balance Pending field.');
COMMENT ON COLUMN CNTRLBAP
    (fecha_emision IS 'Date Issue field.');
COMMENT ON COLUMN CNTRLBAP
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN CNTRLBAP
    (estado_cxp IS 'Status Cxp field.');
COMMENT ON COLUMN CNTRLBAP
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN CNTRLBAP
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN CNTRLBAP
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN CNTRLBAP
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN CNTRLBAP
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN CNTRLBAP
    (created_at IS 'Created At field.');
COMMENT ON COLUMN CNTRLBAP
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN CNTRLBAP (
    codigo_banco IS 'Code Bank',
    codigo_moneda IS 'Code Currency',
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

LABEL ON COLUMN CNTRLBAP (
    codigo_banco TEXT IS 'Code Bank value for the record',
    codigo_moneda TEXT IS 'Code Currency value for the record',
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
