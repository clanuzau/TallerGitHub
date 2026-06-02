--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       LCFIN
-- DESCRIPCION:              Generated table for LCFIN.
-- Objetivo:                 Store operational data for LCFIN.
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
-- Program Name:             LCFIN

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE LCFIN
(
    nivel FOR COLUMN LCFIN01 INTEGER
        NOT NULL WITH DEFAULT 0,
    codigo_documento FOR COLUMN LCFIN02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    secuencia_de_texto FOR COLUMN LCFIN03 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    fecha_emision FOR COLUMN LCFIN04 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN LCFIN05 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_original FOR COLUMN LCFIN06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_actual FOR COLUMN LCFIN07 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    banco_corresponsal FOR COLUMN LCFIN08 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    pais_destino FOR COLUMN LCFIN09 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    estado_carta FOR COLUMN LCFIN10 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN LCFIN11 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN LCFIN12 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN LCFIN13 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN LCFIN14 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN LCFIN15 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN LCFIN16 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN LCFIN17 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT LCFIN_PK PRIMARY KEY (
        nivel,
        codigo_documento,
        secuencia_de_texto
    )
)
RCDFMT RLCFIN;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE LCFIN IS 'Generated table for LCFIN.';

LABEL ON TABLE LCFIN IS 'LCFIN table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN LCFIN
    (nivel IS 'Level field.');
COMMENT ON COLUMN LCFIN
    (codigo_documento IS 'Code Document field.');
COMMENT ON COLUMN LCFIN
    (secuencia_de_texto IS 'Sequence De Text field.');
COMMENT ON COLUMN LCFIN
    (fecha_emision IS 'Date Issue field.');
COMMENT ON COLUMN LCFIN
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN LCFIN
    (monto_original IS 'Amount Original field.');
COMMENT ON COLUMN LCFIN
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN LCFIN
    (banco_corresponsal IS 'Bank Correspondent field.');
COMMENT ON COLUMN LCFIN
    (pais_destino IS 'Country Destination field.');
COMMENT ON COLUMN LCFIN
    (estado_carta IS 'Status Letter field.');
COMMENT ON COLUMN LCFIN
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN LCFIN
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN LCFIN
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN LCFIN
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN LCFIN
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN LCFIN
    (created_at IS 'Created At field.');
COMMENT ON COLUMN LCFIN
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN LCFIN (
    nivel IS 'Level',
    codigo_documento IS 'Code Document',
    secuencia_de_texto IS 'Sequence De Text',
    fecha_emision IS 'Date Issue',
    fecha_vencimiento IS 'Date Due',
    monto_original IS 'Amount Original',
    saldo_actual IS 'Balance Actual',
    banco_corresponsal IS 'Bank Correspondent',
    pais_destino IS 'Country Destination',
    estado_carta IS 'Status Letter',
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

LABEL ON COLUMN LCFIN (
    nivel TEXT IS 'Level value for the record',
    codigo_documento TEXT IS 'Code Document value for the record',
    secuencia_de_texto TEXT IS 'Sequence De Text value for the record',
    fecha_emision TEXT IS 'Date Issue value for the record',
    fecha_vencimiento TEXT IS 'Date Due value for the record',
    monto_original TEXT IS 'Amount Original value for the record',
    saldo_actual TEXT IS 'Balance Actual value for the record',
    banco_corresponsal TEXT IS 'Bank Correspondent value for the record',
    pais_destino TEXT IS 'Country Destination value for the record',
    estado_carta TEXT IS 'Status Letter value for the record',
    usuario_creacion TEXT IS 'User Creation value for the record',
    usuario_actualizacion TEXT IS 'User Update value for the record',
    version_registro TEXT IS 'Version Record value for the record',
    observaciones TEXT IS 'Notes value for the record',
    estado_registro TEXT IS 'Status Record value for the record',
    created_at TEXT IS 'Created At value for the record',
    updated_at TEXT IS 'Updated At value for the record'
);
