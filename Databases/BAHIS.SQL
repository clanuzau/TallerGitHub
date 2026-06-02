--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       BAHIS
-- DESCRIPCION:              Generated table for BAHIS.
-- Objetivo:                 Store operational data for BAHIS.
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
-- Program Name:             BAHIS

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE BAHIS
(
    codigo_banco FOR COLUMN BAHIS01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    origen_cuenta FOR COLUMN BAHIS02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    tipo_cuenta FOR COLUMN BAHIS03 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    id_cliente FOR COLUMN BAHIS04 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    numero_referencia FOR COLUMN BAHIS05 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    fecha FOR COLUMN BAHIS06 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    numero_identificacion FOR COLUMN BAHIS07 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    razon_social FOR COLUMN BAHIS08 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    email FOR COLUMN BAHIS09 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    telefono FOR COLUMN BAHIS10 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    monto_original FOR COLUMN BAHIS11 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_pendiente FOR COLUMN BAHIS12 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    fecha_emision FOR COLUMN BAHIS13 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN BAHIS14 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    estado_cxp FOR COLUMN BAHIS15 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN BAHIS16 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN BAHIS17 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN BAHIS18 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN BAHIS19 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN BAHIS20 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN BAHIS21 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN BAHIS22 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT BAHIS_PK PRIMARY KEY (
        codigo_banco,
        origen_cuenta,
        tipo_cuenta,
        id_cliente,
        numero_referencia,
        fecha
    )
)
RCDFMT RBAHIS;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE BAHIS IS 'Generated table for BAHIS.';

LABEL ON TABLE BAHIS IS 'BAHIS table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN BAHIS
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN BAHIS
    (origen_cuenta IS 'Source Account field.');
COMMENT ON COLUMN BAHIS
    (tipo_cuenta IS 'Type Account field.');
COMMENT ON COLUMN BAHIS
    (id_cliente IS 'Id Customer field.');
COMMENT ON COLUMN BAHIS
    (numero_referencia IS 'Number Reference field.');
COMMENT ON COLUMN BAHIS
    (fecha IS 'Date field.');
COMMENT ON COLUMN BAHIS
    (numero_identificacion IS 'Number Identification field.');
COMMENT ON COLUMN BAHIS
    (razon_social IS 'Name Legal field.');
COMMENT ON COLUMN BAHIS
    (email IS 'Email field.');
COMMENT ON COLUMN BAHIS
    (telefono IS 'Phone field.');
COMMENT ON COLUMN BAHIS
    (monto_original IS 'Amount Original field.');
COMMENT ON COLUMN BAHIS
    (saldo_pendiente IS 'Balance Pending field.');
COMMENT ON COLUMN BAHIS
    (fecha_emision IS 'Date Issue field.');
COMMENT ON COLUMN BAHIS
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN BAHIS
    (estado_cxp IS 'Status Cxp field.');
COMMENT ON COLUMN BAHIS
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN BAHIS
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN BAHIS
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN BAHIS
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN BAHIS
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN BAHIS
    (created_at IS 'Created At field.');
COMMENT ON COLUMN BAHIS
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN BAHIS (
    codigo_banco IS 'Code Bank',
    origen_cuenta IS 'Source Account',
    tipo_cuenta IS 'Type Account',
    id_cliente IS 'Id Customer',
    numero_referencia IS 'Number Reference',
    fecha IS 'Date',
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

LABEL ON COLUMN BAHIS (
    codigo_banco TEXT IS 'Code Bank value for the record',
    origen_cuenta TEXT IS 'Source Account value for the record',
    tipo_cuenta TEXT IS 'Type Account value for the record',
    id_cliente TEXT IS 'Id Customer value for the record',
    numero_referencia TEXT IS 'Number Reference value for the record',
    fecha TEXT IS 'Date value for the record',
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
