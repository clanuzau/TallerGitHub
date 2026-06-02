--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       DLPMT
-- DESCRIPCION:              Generated table for DLPMT.
-- Objetivo:                 Store operational data for DLPMT.
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
-- Program Name:             DLPMT

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE DLPMT
(
    codigo_banco FOR COLUMN DLPMT01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_sucursal FOR COLUMN DLPMT02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_moneda FOR COLUMN DLPMT03 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    numero_prestamo FOR COLUMN DLPMT04 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    fecha FOR COLUMN DLPMT05 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    tipo_registro FOR COLUMN DLPMT06 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    fecha_desembolso FOR COLUMN DLPMT07 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN DLPMT08 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_original FOR COLUMN DLPMT09 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_actual FOR COLUMN DLPMT10 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    tasa_interes FOR COLUMN DLPMT11 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    plazo_meses FOR COLUMN DLPMT12 INTEGER
        NOT NULL WITH DEFAULT 0,
    dias_mora FOR COLUMN DLPMT13 INTEGER
        NOT NULL WITH DEFAULT 0,
    estado_operacion FOR COLUMN DLPMT14 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN DLPMT15 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN DLPMT16 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN DLPMT17 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN DLPMT18 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN DLPMT19 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN DLPMT20 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN DLPMT21 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT DLPMT_PK PRIMARY KEY (
        codigo_banco,
        codigo_sucursal,
        codigo_moneda,
        numero_prestamo,
        fecha,
        tipo_registro
    )
)
RCDFMT RDLPMT;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE DLPMT IS 'Generated table for DLPMT.';

LABEL ON TABLE DLPMT IS 'DLPMT table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN DLPMT
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN DLPMT
    (codigo_sucursal IS 'Code Branch field.');
COMMENT ON COLUMN DLPMT
    (codigo_moneda IS 'Code Currency field.');
COMMENT ON COLUMN DLPMT
    (numero_prestamo IS 'Number Loan field.');
COMMENT ON COLUMN DLPMT
    (fecha IS 'Date field.');
COMMENT ON COLUMN DLPMT
    (tipo_registro IS 'Type Record field.');
COMMENT ON COLUMN DLPMT
    (fecha_desembolso IS 'Date Desembolso field.');
COMMENT ON COLUMN DLPMT
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN DLPMT
    (monto_original IS 'Amount Original field.');
COMMENT ON COLUMN DLPMT
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN DLPMT
    (tasa_interes IS 'Rate Interes field.');
COMMENT ON COLUMN DLPMT
    (plazo_meses IS 'Term Months field.');
COMMENT ON COLUMN DLPMT
    (dias_mora IS 'Dias Mora field.');
COMMENT ON COLUMN DLPMT
    (estado_operacion IS 'Status Operation field.');
COMMENT ON COLUMN DLPMT
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN DLPMT
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN DLPMT
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN DLPMT
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN DLPMT
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN DLPMT
    (created_at IS 'Created At field.');
COMMENT ON COLUMN DLPMT
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN DLPMT (
    codigo_banco IS 'Code Bank',
    codigo_sucursal IS 'Code Branch',
    codigo_moneda IS 'Code Currency',
    numero_prestamo IS 'Number Loan',
    fecha IS 'Date',
    tipo_registro IS 'Type Record',
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

LABEL ON COLUMN DLPMT (
    codigo_banco TEXT IS 'Code Bank value for the record',
    codigo_sucursal TEXT IS 'Code Branch value for the record',
    codigo_moneda TEXT IS 'Code Currency value for the record',
    numero_prestamo TEXT IS 'Number Loan value for the record',
    fecha TEXT IS 'Date value for the record',
    tipo_registro TEXT IS 'Type Record value for the record',
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
