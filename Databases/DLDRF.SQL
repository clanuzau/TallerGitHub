--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       DLDRF
-- DESCRIPCION:              Generated table for DLDRF.
-- Objetivo:                 Store operational data for DLDRF.
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
-- Program Name:             DLDRF

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE DLDRF
(
    codigo_banco FOR COLUMN DLDRF01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_sucursal FOR COLUMN DLDRF02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_moneda FOR COLUMN DLDRF03 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    numero_prestamo FOR COLUMN DLDRF04 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    identificacion FOR COLUMN DLDRF05 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    numero_documento FOR COLUMN DLDRF06 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    fecha_desembolso FOR COLUMN DLDRF07 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN DLDRF08 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_original FOR COLUMN DLDRF09 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_actual FOR COLUMN DLDRF10 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    tasa_interes FOR COLUMN DLDRF11 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    plazo_meses FOR COLUMN DLDRF12 INTEGER
        NOT NULL WITH DEFAULT 0,
    dias_mora FOR COLUMN DLDRF13 INTEGER
        NOT NULL WITH DEFAULT 0,
    estado_operacion FOR COLUMN DLDRF14 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN DLDRF15 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN DLDRF16 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN DLDRF17 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN DLDRF18 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN DLDRF19 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN DLDRF20 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN DLDRF21 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT DLDRF_PK PRIMARY KEY (
        codigo_banco,
        codigo_sucursal,
        codigo_moneda,
        numero_prestamo,
        identificacion,
        numero_documento
    )
)
RCDFMT RDLDRF;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE DLDRF IS 'Generated table for DLDRF.';

LABEL ON TABLE DLDRF IS 'DLDRF table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN DLDRF
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN DLDRF
    (codigo_sucursal IS 'Code Branch field.');
COMMENT ON COLUMN DLDRF
    (codigo_moneda IS 'Code Currency field.');
COMMENT ON COLUMN DLDRF
    (numero_prestamo IS 'Number Loan field.');
COMMENT ON COLUMN DLDRF
    (identificacion IS 'Identification field.');
COMMENT ON COLUMN DLDRF
    (numero_documento IS 'Number Document field.');
COMMENT ON COLUMN DLDRF
    (fecha_desembolso IS 'Date Desembolso field.');
COMMENT ON COLUMN DLDRF
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN DLDRF
    (monto_original IS 'Amount Original field.');
COMMENT ON COLUMN DLDRF
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN DLDRF
    (tasa_interes IS 'Rate Interes field.');
COMMENT ON COLUMN DLDRF
    (plazo_meses IS 'Term Months field.');
COMMENT ON COLUMN DLDRF
    (dias_mora IS 'Dias Mora field.');
COMMENT ON COLUMN DLDRF
    (estado_operacion IS 'Status Operation field.');
COMMENT ON COLUMN DLDRF
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN DLDRF
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN DLDRF
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN DLDRF
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN DLDRF
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN DLDRF
    (created_at IS 'Created At field.');
COMMENT ON COLUMN DLDRF
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN DLDRF (
    codigo_banco IS 'Code Bank',
    codigo_sucursal IS 'Code Branch',
    codigo_moneda IS 'Code Currency',
    numero_prestamo IS 'Number Loan',
    identificacion IS 'Identification',
    numero_documento IS 'Number Document',
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

LABEL ON COLUMN DLDRF (
    codigo_banco TEXT IS 'Code Bank value for the record',
    codigo_sucursal TEXT IS 'Code Branch value for the record',
    codigo_moneda TEXT IS 'Code Currency value for the record',
    numero_prestamo TEXT IS 'Number Loan value for the record',
    identificacion TEXT IS 'Identification value for the record',
    numero_documento TEXT IS 'Number Document value for the record',
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
