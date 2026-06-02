--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       DDCPN
-- DESCRIPCION:              Generated table for DDCPN.
-- Objetivo:                 Store operational data for DDCPN.
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
-- Program Name:             DDCPN

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE DDCPN
(
    numero_prestamo FOR COLUMN DDCPN01 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    fecha_desembolso FOR COLUMN DDCPN02 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN DDCPN03 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_original FOR COLUMN DDCPN04 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_actual FOR COLUMN DDCPN05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    tasa_interes FOR COLUMN DDCPN06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    plazo_meses FOR COLUMN DDCPN07 INTEGER
        NOT NULL WITH DEFAULT 0,
    dias_mora FOR COLUMN DDCPN08 INTEGER
        NOT NULL WITH DEFAULT 0,
    estado_operacion FOR COLUMN DDCPN09 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN DDCPN10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN DDCPN11 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN DDCPN12 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN DDCPN13 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN DDCPN14 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN DDCPN15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN DDCPN16 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT DDCPN_PK PRIMARY KEY (
        numero_prestamo
    )
)
RCDFMT RDDCPN;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE DDCPN IS 'Generated table for DDCPN.';

LABEL ON TABLE DDCPN IS 'DDCPN table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN DDCPN
    (numero_prestamo IS 'Number Loan field.');
COMMENT ON COLUMN DDCPN
    (fecha_desembolso IS 'Date Desembolso field.');
COMMENT ON COLUMN DDCPN
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN DDCPN
    (monto_original IS 'Amount Original field.');
COMMENT ON COLUMN DDCPN
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN DDCPN
    (tasa_interes IS 'Rate Interes field.');
COMMENT ON COLUMN DDCPN
    (plazo_meses IS 'Term Months field.');
COMMENT ON COLUMN DDCPN
    (dias_mora IS 'Dias Mora field.');
COMMENT ON COLUMN DDCPN
    (estado_operacion IS 'Status Operation field.');
COMMENT ON COLUMN DDCPN
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN DDCPN
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN DDCPN
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN DDCPN
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN DDCPN
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN DDCPN
    (created_at IS 'Created At field.');
COMMENT ON COLUMN DDCPN
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN DDCPN (
    numero_prestamo IS 'Number Loan',
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

LABEL ON COLUMN DDCPN (
    numero_prestamo TEXT IS 'Number Loan value for the record',
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
