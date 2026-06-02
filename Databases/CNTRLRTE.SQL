--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       CNTRLRTE
-- DESCRIPCION:              Generated table for CNTRLRTE.
-- Objetivo:                 Store operational data for CNTRLRTE.
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
-- Program Name:             CNTRLRTE

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE CNTRLRTE
(
    codigo_banco FOR COLUMN CNTRLRTE01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    tipo_producto FOR COLUMN CNTRLRTE02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_tabla FOR COLUMN CNTRLRTE03 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    fecha_apertura FOR COLUMN CNTRLRTE04 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_ultima_transaccion FOR COLUMN CNTRLRTE05 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    saldo_actual FOR COLUMN CNTRLRTE06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_disponible FOR COLUMN CNTRLRTE07 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    limite_sobregiro FOR COLUMN CNTRLRTE08 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    estado_cuenta FOR COLUMN CNTRLRTE09 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN CNTRLRTE10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN CNTRLRTE11 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN CNTRLRTE12 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN CNTRLRTE13 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN CNTRLRTE14 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN CNTRLRTE15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN CNTRLRTE16 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT CNTRLRTE_PK PRIMARY KEY (
        codigo_banco,
        tipo_producto,
        codigo_tabla
    )
)
RCDFMT RCNTRLRTE;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE CNTRLRTE IS 'Generated table for CNTRLRTE.';

LABEL ON TABLE CNTRLRTE IS 'CNTRLRTE table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN CNTRLRTE
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN CNTRLRTE
    (tipo_producto IS 'Type Product field.');
COMMENT ON COLUMN CNTRLRTE
    (codigo_tabla IS 'Code Table field.');
COMMENT ON COLUMN CNTRLRTE
    (fecha_apertura IS 'Date Apertura field.');
COMMENT ON COLUMN CNTRLRTE
    (fecha_ultima_transaccion IS 'Date Ultima Transaction field.');
COMMENT ON COLUMN CNTRLRTE
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN CNTRLRTE
    (saldo_disponible IS 'Balance Disponible field.');
COMMENT ON COLUMN CNTRLRTE
    (limite_sobregiro IS 'Limite Sobregiro field.');
COMMENT ON COLUMN CNTRLRTE
    (estado_cuenta IS 'Status Account field.');
COMMENT ON COLUMN CNTRLRTE
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN CNTRLRTE
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN CNTRLRTE
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN CNTRLRTE
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN CNTRLRTE
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN CNTRLRTE
    (created_at IS 'Created At field.');
COMMENT ON COLUMN CNTRLRTE
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN CNTRLRTE (
    codigo_banco IS 'Code Bank',
    tipo_producto IS 'Type Product',
    codigo_tabla IS 'Code Table',
    fecha_apertura IS 'Date Apertura',
    fecha_ultima_transaccion IS 'Date Ultima Transaction',
    saldo_actual IS 'Balance Actual',
    saldo_disponible IS 'Balance Disponible',
    limite_sobregiro IS 'Limite Sobregiro',
    estado_cuenta IS 'Status Account',
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

LABEL ON COLUMN CNTRLRTE (
    codigo_banco TEXT IS 'Code Bank value for the record',
    tipo_producto TEXT IS 'Type Product value for the record',
    codigo_tabla TEXT IS 'Code Table value for the record',
    fecha_apertura TEXT IS 'Date Apertura value for the record',
    fecha_ultima_transaccion TEXT IS 'Date Ultima Transaction value for the re',
    saldo_actual TEXT IS 'Balance Actual value for the record',
    saldo_disponible TEXT IS 'Balance Disponible value for the record',
    limite_sobregiro TEXT IS 'Limite Sobregiro value for the record',
    estado_cuenta TEXT IS 'Status Account value for the record',
    usuario_creacion TEXT IS 'User Creation value for the record',
    usuario_actualizacion TEXT IS 'User Update value for the record',
    version_registro TEXT IS 'Version Record value for the record',
    observaciones TEXT IS 'Notes value for the record',
    estado_registro TEXT IS 'Status Record value for the record',
    created_at TEXT IS 'Created At value for the record',
    updated_at TEXT IS 'Updated At value for the record'
);
