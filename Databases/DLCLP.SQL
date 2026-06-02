--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       DLCLP
-- DESCRIPCION:              Generated table for DLCLP.
-- Objetivo:                 Store operational data for DLCLP.
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
-- Program Name:             DLCLP

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE DLCLP
(
    id_cliente FOR COLUMN DLCLP01 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    numero_cuenta FOR COLUMN DLCLP02 VARCHAR(24)
        NOT NULL WITH DEFAULT '',
    referencia FOR COLUMN DLCLP03 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    fecha_desembolso FOR COLUMN DLCLP04 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN DLCLP05 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_original FOR COLUMN DLCLP06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_actual FOR COLUMN DLCLP07 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    tasa_interes FOR COLUMN DLCLP08 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    plazo_meses FOR COLUMN DLCLP09 INTEGER
        NOT NULL WITH DEFAULT 0,
    dias_mora FOR COLUMN DLCLP10 INTEGER
        NOT NULL WITH DEFAULT 0,
    estado_operacion FOR COLUMN DLCLP11 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN DLCLP12 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN DLCLP13 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN DLCLP14 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN DLCLP15 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN DLCLP16 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN DLCLP17 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN DLCLP18 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT DLCLP_PK PRIMARY KEY (
        id_cliente,
        numero_cuenta,
        referencia
    )
)
RCDFMT RDLCLP;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE DLCLP IS 'Generated table for DLCLP.';

LABEL ON TABLE DLCLP IS 'DLCLP table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN DLCLP
    (id_cliente IS 'Id Customer field.');
COMMENT ON COLUMN DLCLP
    (numero_cuenta IS 'Number Account field.');
COMMENT ON COLUMN DLCLP
    (referencia IS 'Reference field.');
COMMENT ON COLUMN DLCLP
    (fecha_desembolso IS 'Date Desembolso field.');
COMMENT ON COLUMN DLCLP
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN DLCLP
    (monto_original IS 'Amount Original field.');
COMMENT ON COLUMN DLCLP
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN DLCLP
    (tasa_interes IS 'Rate Interes field.');
COMMENT ON COLUMN DLCLP
    (plazo_meses IS 'Term Months field.');
COMMENT ON COLUMN DLCLP
    (dias_mora IS 'Dias Mora field.');
COMMENT ON COLUMN DLCLP
    (estado_operacion IS 'Status Operation field.');
COMMENT ON COLUMN DLCLP
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN DLCLP
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN DLCLP
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN DLCLP
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN DLCLP
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN DLCLP
    (created_at IS 'Created At field.');
COMMENT ON COLUMN DLCLP
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN DLCLP (
    id_cliente IS 'Id Customer',
    numero_cuenta IS 'Number Account',
    referencia IS 'Reference',
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

LABEL ON COLUMN DLCLP (
    id_cliente TEXT IS 'Id Customer value for the record',
    numero_cuenta TEXT IS 'Number Account value for the record',
    referencia TEXT IS 'Reference value for the record',
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
