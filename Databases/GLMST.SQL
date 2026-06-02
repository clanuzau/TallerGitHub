--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       GLMST
-- DESCRIPCION:              Generated table for GLMST.
-- Objetivo:                 Store operational data for GLMST.
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
-- Program Name:             GLMST

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE GLMST
(
    codigo_banco FOR COLUMN GLMST01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_moneda FOR COLUMN GLMST02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    cuenta_contable FOR COLUMN GLMST03 VARCHAR(24)
        NOT NULL WITH DEFAULT '',
    descripcion_cuenta FOR COLUMN GLMST04 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    naturaleza_cuenta FOR COLUMN GLMST05 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    nivel_cuenta FOR COLUMN GLMST06 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    saldo_actual FOR COLUMN GLMST07 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    fecha_proceso_sistema FOR COLUMN GLMST08 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    observaciones FOR COLUMN GLMST09 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN GLMST10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN GLMST11 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN GLMST12 INTEGER
        NOT NULL WITH DEFAULT 0,
    estado_registro FOR COLUMN GLMST13 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN GLMST14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN GLMST15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT GLMST_PK PRIMARY KEY (
        codigo_banco,
        codigo_moneda,
        cuenta_contable
    )
)
RCDFMT RGLMST;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE GLMST IS 'Generated table for GLMST.';

LABEL ON TABLE GLMST IS 'GLMST table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN GLMST
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN GLMST
    (codigo_moneda IS 'Code Currency field.');
COMMENT ON COLUMN GLMST
    (cuenta_contable IS 'Account Ledger field.');
COMMENT ON COLUMN GLMST
    (descripcion_cuenta IS 'Description Account field.');
COMMENT ON COLUMN GLMST
    (naturaleza_cuenta IS 'Naturaleza Account field.');
COMMENT ON COLUMN GLMST
    (nivel_cuenta IS 'Level Account field.');
COMMENT ON COLUMN GLMST
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN GLMST
    (fecha_proceso_sistema IS 'Date Process Sistema field.');
COMMENT ON COLUMN GLMST
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN GLMST
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN GLMST
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN GLMST
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN GLMST
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN GLMST
    (created_at IS 'Created At field.');
COMMENT ON COLUMN GLMST
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN GLMST (
    codigo_banco IS 'Code Bank',
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

LABEL ON COLUMN GLMST (
    codigo_banco TEXT IS 'Code Bank value for the record',
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
