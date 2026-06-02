--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       CNTRLRCO
-- DESCRIPCION:              Generated table for CNTRLRCO.
-- Objetivo:                 Store operational data for CNTRLRCO.
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
-- Program Name:             CNTRLRCO

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE CNTRLRCO
(
    codigo_banco FOR COLUMN CNTRLRCO01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    tipo_producto FOR COLUMN CNTRLRCO02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    numero_tabla FOR COLUMN CNTRLRCO03 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    fecha_recepcion FOR COLUMN CNTRLRCO04 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN CNTRLRCO05 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_original FOR COLUMN CNTRLRCO06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_pendiente FOR COLUMN CNTRLRCO07 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    tipo_documento FOR COLUMN CNTRLRCO08 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    estado_operacion FOR COLUMN CNTRLRCO09 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN CNTRLRCO10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN CNTRLRCO11 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN CNTRLRCO12 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN CNTRLRCO13 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN CNTRLRCO14 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN CNTRLRCO15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN CNTRLRCO16 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT CNTRLRCO_PK PRIMARY KEY (
        codigo_banco,
        tipo_producto,
        numero_tabla
    )
)
RCDFMT RCNTRLRCO;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE CNTRLRCO IS 'Generated table for CNTRLRCO.';

LABEL ON TABLE CNTRLRCO IS 'CNTRLRCO table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN CNTRLRCO
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN CNTRLRCO
    (tipo_producto IS 'Type Product field.');
COMMENT ON COLUMN CNTRLRCO
    (numero_tabla IS 'Number Table field.');
COMMENT ON COLUMN CNTRLRCO
    (fecha_recepcion IS 'Date Recepcion field.');
COMMENT ON COLUMN CNTRLRCO
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN CNTRLRCO
    (monto_original IS 'Amount Original field.');
COMMENT ON COLUMN CNTRLRCO
    (saldo_pendiente IS 'Balance Pending field.');
COMMENT ON COLUMN CNTRLRCO
    (tipo_documento IS 'Type Document field.');
COMMENT ON COLUMN CNTRLRCO
    (estado_operacion IS 'Status Operation field.');
COMMENT ON COLUMN CNTRLRCO
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN CNTRLRCO
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN CNTRLRCO
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN CNTRLRCO
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN CNTRLRCO
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN CNTRLRCO
    (created_at IS 'Created At field.');
COMMENT ON COLUMN CNTRLRCO
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN CNTRLRCO (
    codigo_banco IS 'Code Bank',
    tipo_producto IS 'Type Product',
    numero_tabla IS 'Number Table',
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

LABEL ON COLUMN CNTRLRCO (
    codigo_banco TEXT IS 'Code Bank value for the record',
    tipo_producto TEXT IS 'Type Product value for the record',
    numero_tabla TEXT IS 'Number Table value for the record',
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
