--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       DLSDE
-- DESCRIPCION:              Generated table for DLSDE.
-- Objetivo:                 Store operational data for DLSDE.
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
-- Program Name:             DLSDE

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE DLSDE
(
    numero_prestamo FOR COLUMN DLSDE01 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    fecha FOR COLUMN DLSDE02 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    tipo_registro FOR COLUMN DLSDE03 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    secuencia FOR COLUMN DLSDE04 INTEGER
        NOT NULL WITH DEFAULT 0,
    codigo_deduccion FOR COLUMN DLSDE05 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    fecha_desembolso FOR COLUMN DLSDE06 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN DLSDE07 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_original FOR COLUMN DLSDE08 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_actual FOR COLUMN DLSDE09 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    tasa_interes FOR COLUMN DLSDE10 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    plazo_meses FOR COLUMN DLSDE11 INTEGER
        NOT NULL WITH DEFAULT 0,
    dias_mora FOR COLUMN DLSDE12 INTEGER
        NOT NULL WITH DEFAULT 0,
    estado_operacion FOR COLUMN DLSDE13 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN DLSDE14 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN DLSDE15 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN DLSDE16 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN DLSDE17 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN DLSDE18 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN DLSDE19 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN DLSDE20 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT DLSDE_PK PRIMARY KEY (
        numero_prestamo,
        fecha,
        tipo_registro,
        secuencia,
        codigo_deduccion
    )
)
RCDFMT RDLSDE;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE DLSDE IS 'Generated table for DLSDE.';

LABEL ON TABLE DLSDE IS 'DLSDE table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN DLSDE
    (numero_prestamo IS 'Number Loan field.');
COMMENT ON COLUMN DLSDE
    (fecha IS 'Date field.');
COMMENT ON COLUMN DLSDE
    (tipo_registro IS 'Type Record field.');
COMMENT ON COLUMN DLSDE
    (secuencia IS 'Sequence field.');
COMMENT ON COLUMN DLSDE
    (codigo_deduccion IS 'Code Deduction field.');
COMMENT ON COLUMN DLSDE
    (fecha_desembolso IS 'Date Desembolso field.');
COMMENT ON COLUMN DLSDE
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN DLSDE
    (monto_original IS 'Amount Original field.');
COMMENT ON COLUMN DLSDE
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN DLSDE
    (tasa_interes IS 'Rate Interes field.');
COMMENT ON COLUMN DLSDE
    (plazo_meses IS 'Term Months field.');
COMMENT ON COLUMN DLSDE
    (dias_mora IS 'Dias Mora field.');
COMMENT ON COLUMN DLSDE
    (estado_operacion IS 'Status Operation field.');
COMMENT ON COLUMN DLSDE
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN DLSDE
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN DLSDE
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN DLSDE
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN DLSDE
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN DLSDE
    (created_at IS 'Created At field.');
COMMENT ON COLUMN DLSDE
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN DLSDE (
    numero_prestamo IS 'Number Loan',
    fecha IS 'Date',
    tipo_registro IS 'Type Record',
    secuencia IS 'Sequence',
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

LABEL ON COLUMN DLSDE (
    numero_prestamo TEXT IS 'Number Loan value for the record',
    fecha TEXT IS 'Date value for the record',
    tipo_registro TEXT IS 'Type Record value for the record',
    secuencia TEXT IS 'Sequence value for the record',
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
