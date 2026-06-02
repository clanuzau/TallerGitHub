--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       BAINP
-- DESCRIPCION:              Generated table for BAINP.
-- Objetivo:                 Store operational data for BAINP.
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
-- Program Name:             BAINP

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE BAINP
(
    numero_batch FOR COLUMN BAINP01 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    secuencia FOR COLUMN BAINP02 INTEGER
        NOT NULL WITH DEFAULT 0,
    numero_identificacion FOR COLUMN BAINP03 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    razon_social FOR COLUMN BAINP04 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    email FOR COLUMN BAINP05 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    telefono FOR COLUMN BAINP06 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    monto_original FOR COLUMN BAINP07 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_pendiente FOR COLUMN BAINP08 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    fecha_emision FOR COLUMN BAINP09 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN BAINP10 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    estado_cxp FOR COLUMN BAINP11 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN BAINP12 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN BAINP13 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN BAINP14 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN BAINP15 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN BAINP16 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN BAINP17 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN BAINP18 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT BAINP_PK PRIMARY KEY (
        numero_batch,
        secuencia
    )
)
RCDFMT RBAINP;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE BAINP IS 'Generated table for BAINP.';

LABEL ON TABLE BAINP IS 'BAINP table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN BAINP
    (numero_batch IS 'Number Batch field.');
COMMENT ON COLUMN BAINP
    (secuencia IS 'Sequence field.');
COMMENT ON COLUMN BAINP
    (numero_identificacion IS 'Number Identification field.');
COMMENT ON COLUMN BAINP
    (razon_social IS 'Name Legal field.');
COMMENT ON COLUMN BAINP
    (email IS 'Email field.');
COMMENT ON COLUMN BAINP
    (telefono IS 'Phone field.');
COMMENT ON COLUMN BAINP
    (monto_original IS 'Amount Original field.');
COMMENT ON COLUMN BAINP
    (saldo_pendiente IS 'Balance Pending field.');
COMMENT ON COLUMN BAINP
    (fecha_emision IS 'Date Issue field.');
COMMENT ON COLUMN BAINP
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN BAINP
    (estado_cxp IS 'Status Cxp field.');
COMMENT ON COLUMN BAINP
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN BAINP
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN BAINP
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN BAINP
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN BAINP
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN BAINP
    (created_at IS 'Created At field.');
COMMENT ON COLUMN BAINP
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN BAINP (
    numero_batch IS 'Number Batch',
    secuencia IS 'Sequence',
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

LABEL ON COLUMN BAINP (
    numero_batch TEXT IS 'Number Batch value for the record',
    secuencia TEXT IS 'Sequence value for the record',
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
