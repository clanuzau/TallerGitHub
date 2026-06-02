--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       CNTRLRLC
-- DESCRIPCION:              Generated table for CNTRLRLC.
-- Objetivo:                 Store operational data for CNTRLRLC.
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
-- Program Name:             CNTRLRLC

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE CNTRLRLC
(
    codigo_banco FOR COLUMN CNTRLRLC01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    tipo_producto FOR COLUMN CNTRLRLC02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    numero_tabla FOR COLUMN CNTRLRLC03 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    fecha_emision FOR COLUMN CNTRLRLC04 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN CNTRLRLC05 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_original FOR COLUMN CNTRLRLC06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_actual FOR COLUMN CNTRLRLC07 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    banco_corresponsal FOR COLUMN CNTRLRLC08 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    pais_destino FOR COLUMN CNTRLRLC09 VARCHAR(80)
        NOT NULL WITH DEFAULT '',
    estado_carta FOR COLUMN CNTRLRLC10 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN CNTRLRLC11 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN CNTRLRLC12 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN CNTRLRLC13 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN CNTRLRLC14 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN CNTRLRLC15 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN CNTRLRLC16 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN CNTRLRLC17 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT CNTRLRLC_PK PRIMARY KEY (
        codigo_banco,
        tipo_producto,
        numero_tabla
    )
)
RCDFMT RCNTRLRLC;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE CNTRLRLC IS 'Generated table for CNTRLRLC.';

LABEL ON TABLE CNTRLRLC IS 'CNTRLRLC table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN CNTRLRLC
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN CNTRLRLC
    (tipo_producto IS 'Type Product field.');
COMMENT ON COLUMN CNTRLRLC
    (numero_tabla IS 'Number Table field.');
COMMENT ON COLUMN CNTRLRLC
    (fecha_emision IS 'Date Issue field.');
COMMENT ON COLUMN CNTRLRLC
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN CNTRLRLC
    (monto_original IS 'Amount Original field.');
COMMENT ON COLUMN CNTRLRLC
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN CNTRLRLC
    (banco_corresponsal IS 'Bank Correspondent field.');
COMMENT ON COLUMN CNTRLRLC
    (pais_destino IS 'Country Destination field.');
COMMENT ON COLUMN CNTRLRLC
    (estado_carta IS 'Status Letter field.');
COMMENT ON COLUMN CNTRLRLC
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN CNTRLRLC
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN CNTRLRLC
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN CNTRLRLC
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN CNTRLRLC
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN CNTRLRLC
    (created_at IS 'Created At field.');
COMMENT ON COLUMN CNTRLRLC
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN CNTRLRLC (
    codigo_banco IS 'Code Bank',
    tipo_producto IS 'Type Product',
    numero_tabla IS 'Number Table',
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

LABEL ON COLUMN CNTRLRLC (
    codigo_banco TEXT IS 'Code Bank value for the record',
    tipo_producto TEXT IS 'Type Product value for the record',
    numero_tabla TEXT IS 'Number Table value for the record',
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
