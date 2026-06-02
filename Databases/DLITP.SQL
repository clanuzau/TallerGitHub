--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       DLITP
-- DESCRIPCION:              Generated table for DLITP.
-- Objetivo:                 Store operational data for DLITP.
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
-- Program Name:             DLITP

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE DLITP
(
    numero_prestamo FOR COLUMN DLITP01 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    codigo_deduccion FOR COLUMN DLITP02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    fecha_desembolso FOR COLUMN DLITP03 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN DLITP04 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_original FOR COLUMN DLITP05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_actual FOR COLUMN DLITP06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    tasa_interes FOR COLUMN DLITP07 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    plazo_meses FOR COLUMN DLITP08 INTEGER
        NOT NULL WITH DEFAULT 0,
    dias_mora FOR COLUMN DLITP09 INTEGER
        NOT NULL WITH DEFAULT 0,
    estado_operacion FOR COLUMN DLITP10 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN DLITP11 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN DLITP12 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN DLITP13 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN DLITP14 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN DLITP15 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN DLITP16 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN DLITP17 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT DLITP_PK PRIMARY KEY (
        numero_prestamo,
        codigo_deduccion
    )
)
RCDFMT RDLITP;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE DLITP IS 'Generated table for DLITP.';

LABEL ON TABLE DLITP IS 'DLITP table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN DLITP
    (numero_prestamo IS 'Number Loan field.');
COMMENT ON COLUMN DLITP
    (codigo_deduccion IS 'Code Deduction field.');
COMMENT ON COLUMN DLITP
    (fecha_desembolso IS 'Date Desembolso field.');
COMMENT ON COLUMN DLITP
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN DLITP
    (monto_original IS 'Amount Original field.');
COMMENT ON COLUMN DLITP
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN DLITP
    (tasa_interes IS 'Rate Interes field.');
COMMENT ON COLUMN DLITP
    (plazo_meses IS 'Term Months field.');
COMMENT ON COLUMN DLITP
    (dias_mora IS 'Dias Mora field.');
COMMENT ON COLUMN DLITP
    (estado_operacion IS 'Status Operation field.');
COMMENT ON COLUMN DLITP
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN DLITP
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN DLITP
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN DLITP
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN DLITP
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN DLITP
    (created_at IS 'Created At field.');
COMMENT ON COLUMN DLITP
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN DLITP (
    numero_prestamo IS 'Number Loan',
    codigo_deduccion IS 'Code Deduction',
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

LABEL ON COLUMN DLITP (
    numero_prestamo TEXT IS 'Number Loan value for the record',
    codigo_deduccion TEXT IS 'Code Deduction value for the record',
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
