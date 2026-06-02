--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       CDRTE
-- DESCRIPCION:              Generated table for CDRTE.
-- Objetivo:                 Store operational data for CDRTE.
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
-- Program Name:             CDRTE

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE CDRTE
(
    numero_tabla FOR COLUMN CDRTE01 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    fecha FOR COLUMN CDRTE02 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    codigo_moneda FOR COLUMN CDRTE03 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    fecha_desembolso FOR COLUMN CDRTE04 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN CDRTE05 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_original FOR COLUMN CDRTE06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_actual FOR COLUMN CDRTE07 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    tasa_interes FOR COLUMN CDRTE08 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    plazo_meses FOR COLUMN CDRTE09 INTEGER
        NOT NULL WITH DEFAULT 0,
    dias_mora FOR COLUMN CDRTE10 INTEGER
        NOT NULL WITH DEFAULT 0,
    estado_operacion FOR COLUMN CDRTE11 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN CDRTE12 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN CDRTE13 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN CDRTE14 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN CDRTE15 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN CDRTE16 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN CDRTE17 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN CDRTE18 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT CDRTE_PK PRIMARY KEY (
        numero_tabla,
        fecha,
        codigo_moneda
    )
)
RCDFMT RCDRTE;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE CDRTE IS 'Generated table for CDRTE.';

LABEL ON TABLE CDRTE IS 'CDRTE table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN CDRTE
    (numero_tabla IS 'Number Table field.');
COMMENT ON COLUMN CDRTE
    (fecha IS 'Date field.');
COMMENT ON COLUMN CDRTE
    (codigo_moneda IS 'Code Currency field.');
COMMENT ON COLUMN CDRTE
    (fecha_desembolso IS 'Date Desembolso field.');
COMMENT ON COLUMN CDRTE
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN CDRTE
    (monto_original IS 'Amount Original field.');
COMMENT ON COLUMN CDRTE
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN CDRTE
    (tasa_interes IS 'Rate Interes field.');
COMMENT ON COLUMN CDRTE
    (plazo_meses IS 'Term Months field.');
COMMENT ON COLUMN CDRTE
    (dias_mora IS 'Dias Mora field.');
COMMENT ON COLUMN CDRTE
    (estado_operacion IS 'Status Operation field.');
COMMENT ON COLUMN CDRTE
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN CDRTE
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN CDRTE
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN CDRTE
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN CDRTE
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN CDRTE
    (created_at IS 'Created At field.');
COMMENT ON COLUMN CDRTE
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN CDRTE (
    numero_tabla IS 'Number Table',
    fecha IS 'Date',
    codigo_moneda IS 'Code Currency',
    fecha_desembolso IS 'Date Desembolso',
    fecha_vencimiento IS 'Date Due',
    monto_original IS 'Amount Original',
    saldo_actual IS 'Balance Actual',
    tasa_interes IS 'Rate Interes',
    plazo_meses IS 'Term Months',
    dias_mora IS 'Dias Mora',
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

LABEL ON COLUMN CDRTE (
    numero_tabla TEXT IS 'Number Table value for the record',
    fecha TEXT IS 'Date value for the record',
    codigo_moneda TEXT IS 'Code Currency value for the record',
    fecha_desembolso TEXT IS 'Date Desembolso value for the record',
    fecha_vencimiento TEXT IS 'Date Due value for the record',
    monto_original TEXT IS 'Amount Original value for the record',
    saldo_actual TEXT IS 'Balance Actual value for the record',
    tasa_interes TEXT IS 'Rate Interes value for the record',
    plazo_meses TEXT IS 'Term Months value for the record',
    dias_mora TEXT IS 'Dias Mora value for the record',
    estado_operacion TEXT IS 'Status Operation value for the record',
    usuario_creacion TEXT IS 'User Creation value for the record',
    usuario_actualizacion TEXT IS 'User Update value for the record',
    version_registro TEXT IS 'Version Record value for the record',
    observaciones TEXT IS 'Notes value for the record',
    estado_registro TEXT IS 'Status Record value for the record',
    created_at TEXT IS 'Created At value for the record',
    updated_at TEXT IS 'Updated At value for the record'
);
