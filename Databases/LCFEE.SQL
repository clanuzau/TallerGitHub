--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       LCFEE
-- DESCRIPCION:              Generated table for LCFEE.
-- Objetivo:                 Store operational data for LCFEE.
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
-- Program Name:             LCFEE

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE LCFEE
(
    numero_carta_credito FOR COLUMN LCFEE01 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    codigo_de_comision FOR COLUMN LCFEE02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    fecha_recepcion FOR COLUMN LCFEE03 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN LCFEE04 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_original FOR COLUMN LCFEE05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_pendiente FOR COLUMN LCFEE06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    tipo_documento FOR COLUMN LCFEE07 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    estado_operacion FOR COLUMN LCFEE08 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN LCFEE09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN LCFEE10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN LCFEE11 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN LCFEE12 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN LCFEE13 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN LCFEE14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN LCFEE15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT LCFEE_PK PRIMARY KEY (
        numero_carta_credito,
        codigo_de_comision
    )
)
RCDFMT RLCFEE;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE LCFEE IS 'Generated table for LCFEE.';

LABEL ON TABLE LCFEE IS 'LCFEE table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN LCFEE
    (numero_carta_credito IS 'Number Letter Credit field.');
COMMENT ON COLUMN LCFEE
    (codigo_de_comision IS 'Code De Fee field.');
COMMENT ON COLUMN LCFEE
    (fecha_recepcion IS 'Date Recepcion field.');
COMMENT ON COLUMN LCFEE
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN LCFEE
    (monto_original IS 'Amount Original field.');
COMMENT ON COLUMN LCFEE
    (saldo_pendiente IS 'Balance Pending field.');
COMMENT ON COLUMN LCFEE
    (tipo_documento IS 'Type Document field.');
COMMENT ON COLUMN LCFEE
    (estado_operacion IS 'Status Operation field.');
COMMENT ON COLUMN LCFEE
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN LCFEE
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN LCFEE
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN LCFEE
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN LCFEE
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN LCFEE
    (created_at IS 'Created At field.');
COMMENT ON COLUMN LCFEE
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN LCFEE (
    numero_carta_credito IS 'Number Letter Credit',
    codigo_de_comision IS 'Code De Fee',
    fecha_recepcion IS 'Date Recepcion',
    fecha_vencimiento IS 'Date Due',
    monto_original IS 'Amount Original',
    saldo_pendiente IS 'Balance Pending',
    tipo_documento IS 'Type Document',
    estado_operacion IS 'Status Operation',
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

LABEL ON COLUMN LCFEE (
    numero_carta_credito TEXT IS 'Number Letter Credit value for the record',
    codigo_de_comision TEXT IS 'Code De Fee value for the record',
    fecha_recepcion TEXT IS 'Date Recepcion value for the record',
    fecha_vencimiento TEXT IS 'Date Due value for the record',
    monto_original TEXT IS 'Amount Original value for the record',
    saldo_pendiente TEXT IS 'Balance Pending value for the record',
    tipo_documento TEXT IS 'Type Document value for the record',
    estado_operacion TEXT IS 'Status Operation value for the record',
    usuario_creacion TEXT IS 'User Creation value for the record',
    usuario_actualizacion TEXT IS 'User Update value for the record',
    version_registro TEXT IS 'Version Record value for the record',
    observaciones TEXT IS 'Notes value for the record',
    estado_registro TEXT IS 'Status Record value for the record',
    created_at TEXT IS 'Created At value for the record',
    updated_at TEXT IS 'Updated At value for the record'
);
