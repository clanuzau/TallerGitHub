--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       TLMST
-- DESCRIPCION:              Generated table for TLMST.
-- Objetivo:                 Store operational data for TLMST.
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
-- Program Name:             TLMST

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE TLMST
(
    codigo_de_cajero FOR COLUMN TLMST01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_moneda FOR COLUMN TLMST02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    fecha_apertura FOR COLUMN TLMST03 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_ultima_transaccion FOR COLUMN TLMST04 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    saldo_actual FOR COLUMN TLMST05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_disponible FOR COLUMN TLMST06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    limite_sobregiro FOR COLUMN TLMST07 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    estado_cuenta FOR COLUMN TLMST08 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN TLMST09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN TLMST10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN TLMST11 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN TLMST12 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN TLMST13 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN TLMST14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN TLMST15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT TLMST_PK PRIMARY KEY (
        codigo_de_cajero,
        codigo_moneda
    )
)
RCDFMT RTLMST;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE TLMST IS 'Generated table for TLMST.';

LABEL ON TABLE TLMST IS 'TLMST table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN TLMST
    (codigo_de_cajero IS 'Code De Teller field.');
COMMENT ON COLUMN TLMST
    (codigo_moneda IS 'Code Currency field.');
COMMENT ON COLUMN TLMST
    (fecha_apertura IS 'Date Apertura field.');
COMMENT ON COLUMN TLMST
    (fecha_ultima_transaccion IS 'Date Ultima Transaction field.');
COMMENT ON COLUMN TLMST
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN TLMST
    (saldo_disponible IS 'Balance Disponible field.');
COMMENT ON COLUMN TLMST
    (limite_sobregiro IS 'Limite Sobregiro field.');
COMMENT ON COLUMN TLMST
    (estado_cuenta IS 'Status Account field.');
COMMENT ON COLUMN TLMST
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN TLMST
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN TLMST
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN TLMST
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN TLMST
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN TLMST
    (created_at IS 'Created At field.');
COMMENT ON COLUMN TLMST
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN TLMST (
    codigo_de_cajero IS 'Code De Teller',
    codigo_moneda IS 'Code Currency',
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

LABEL ON COLUMN TLMST (
    codigo_de_cajero TEXT IS 'Code De Teller value for the record',
    codigo_moneda TEXT IS 'Code Currency value for the record',
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
