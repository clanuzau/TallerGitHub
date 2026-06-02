--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       GLBLN
-- DESCRIPCION:              Generated table for GLBLN.
-- Objetivo:                 Store operational data for GLBLN.
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
-- Program Name:             GLBLN

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE GLBLN
(
    codigo_banco FOR COLUMN GLBLN01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_sucursal FOR COLUMN GLBLN02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_moneda FOR COLUMN GLBLN03 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    cuenta_contable FOR COLUMN GLBLN04 VARCHAR(24)
        NOT NULL WITH DEFAULT '',
    descripcion_cuenta FOR COLUMN GLBLN05 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    naturaleza_cuenta FOR COLUMN GLBLN06 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    nivel_cuenta FOR COLUMN GLBLN07 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    saldo_actual FOR COLUMN GLBLN08 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    fecha_proceso_sistema FOR COLUMN GLBLN09 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    observaciones FOR COLUMN GLBLN10 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN GLBLN11 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN GLBLN12 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN GLBLN13 INTEGER
        NOT NULL WITH DEFAULT 0,
    estado_registro FOR COLUMN GLBLN14 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN GLBLN15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN GLBLN16 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT GLBLN_PK PRIMARY KEY (
        codigo_banco,
        codigo_sucursal,
        codigo_moneda,
        cuenta_contable
    )
)
RCDFMT RGLBLN;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE GLBLN IS 'Generated table for GLBLN.';

LABEL ON TABLE GLBLN IS 'GLBLN table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN GLBLN
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN GLBLN
    (codigo_sucursal IS 'Code Branch field.');
COMMENT ON COLUMN GLBLN
    (codigo_moneda IS 'Code Currency field.');
COMMENT ON COLUMN GLBLN
    (cuenta_contable IS 'Account Ledger field.');
COMMENT ON COLUMN GLBLN
    (descripcion_cuenta IS 'Description Account field.');
COMMENT ON COLUMN GLBLN
    (naturaleza_cuenta IS 'Naturaleza Account field.');
COMMENT ON COLUMN GLBLN
    (nivel_cuenta IS 'Level Account field.');
COMMENT ON COLUMN GLBLN
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN GLBLN
    (fecha_proceso_sistema IS 'Date Process Sistema field.');
COMMENT ON COLUMN GLBLN
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN GLBLN
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN GLBLN
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN GLBLN
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN GLBLN
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN GLBLN
    (created_at IS 'Created At field.');
COMMENT ON COLUMN GLBLN
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN GLBLN (
    codigo_banco IS 'Code Bank',
    codigo_sucursal IS 'Code Branch',
    codigo_moneda IS 'Code Currency',
    cuenta_contable IS 'Account Ledger',
    descripcion_cuenta IS 'Description Account',
    naturaleza_cuenta IS 'Naturaleza Account',
    nivel_cuenta IS 'Level Account',
    saldo_actual IS 'Balance Actual',
    fecha_proceso_sistema IS 'Date Process Sistema',
    observaciones IS 'Notes',
    usuario_creacion IS 'User Creation',
    usuario_actualizacion IS 'User Update',
    version_registro IS 'Version Record',
    estado_registro IS 'Status Record',
    created_at IS 'Created At',
    updated_at IS 'Updated At'
);

--=====================================================================
-- COLUMN TEXT LABELS
--=====================================================================

LABEL ON COLUMN GLBLN (
    codigo_banco TEXT IS 'Code Bank value for the record',
    codigo_sucursal TEXT IS 'Code Branch value for the record',
    codigo_moneda TEXT IS 'Code Currency value for the record',
    cuenta_contable TEXT IS 'Account Ledger value for the record',
    descripcion_cuenta TEXT IS 'Description Account value for the record',
    naturaleza_cuenta TEXT IS 'Naturaleza Account value for the record',
    nivel_cuenta TEXT IS 'Level Account value for the record',
    saldo_actual TEXT IS 'Balance Actual value for the record',
    fecha_proceso_sistema TEXT IS 'Date Process Sistema value for the record',
    observaciones TEXT IS 'Notes value for the record',
    usuario_creacion TEXT IS 'User Creation value for the record',
    usuario_actualizacion TEXT IS 'User Update value for the record',
    version_registro TEXT IS 'Version Record value for the record',
    estado_registro TEXT IS 'Status Record value for the record',
    created_at TEXT IS 'Created At value for the record',
    updated_at TEXT IS 'Updated At value for the record'
);
