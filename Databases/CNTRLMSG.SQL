--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       CNTRLMSG
-- DESCRIPCION:              Generated table for CNTRLMSG.
-- Objetivo:                 Store operational data for CNTRLMSG.
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
-- Program Name:             CNTRLMSG

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE CNTRLMSG
(
    codigo_banco FOR COLUMN CNTRLMSG01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    fecha_apertura FOR COLUMN CNTRLMSG02 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_ultima_transaccion FOR COLUMN CNTRLMSG03 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    saldo_actual FOR COLUMN CNTRLMSG04 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_disponible FOR COLUMN CNTRLMSG05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    limite_sobregiro FOR COLUMN CNTRLMSG06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    estado_cuenta FOR COLUMN CNTRLMSG07 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN CNTRLMSG08 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN CNTRLMSG09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN CNTRLMSG10 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN CNTRLMSG11 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN CNTRLMSG12 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN CNTRLMSG13 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN CNTRLMSG14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT CNTRLMSG_PK PRIMARY KEY (
        codigo_banco
    )
)
RCDFMT RCNTRLMSG;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE CNTRLMSG IS 'Generated table for CNTRLMSG.';

LABEL ON TABLE CNTRLMSG IS 'CNTRLMSG table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN CNTRLMSG
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN CNTRLMSG
    (fecha_apertura IS 'Date Apertura field.');
COMMENT ON COLUMN CNTRLMSG
    (fecha_ultima_transaccion IS 'Date Ultima Transaction field.');
COMMENT ON COLUMN CNTRLMSG
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN CNTRLMSG
    (saldo_disponible IS 'Balance Disponible field.');
COMMENT ON COLUMN CNTRLMSG
    (limite_sobregiro IS 'Limite Sobregiro field.');
COMMENT ON COLUMN CNTRLMSG
    (estado_cuenta IS 'Status Account field.');
COMMENT ON COLUMN CNTRLMSG
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN CNTRLMSG
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN CNTRLMSG
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN CNTRLMSG
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN CNTRLMSG
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN CNTRLMSG
    (created_at IS 'Created At field.');
COMMENT ON COLUMN CNTRLMSG
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN CNTRLMSG (
    codigo_banco IS 'Code Bank',
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

LABEL ON COLUMN CNTRLMSG (
    codigo_banco TEXT IS 'Code Bank value for the record',
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
