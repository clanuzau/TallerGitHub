--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       CNTRLDLS
-- DESCRIPCION:              Generated table for CNTRLDLS.
-- Objetivo:                 Store operational data for CNTRLDLS.
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
-- Program Name:             CNTRLDLS

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE CNTRLDLS
(
    codigo_banco FOR COLUMN CNTRLDLS01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    numero_tabla FOR COLUMN CNTRLDLS02 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    tipo_producto FOR COLUMN CNTRLDLS03 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    fecha_desembolso FOR COLUMN CNTRLDLS04 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN CNTRLDLS05 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_original FOR COLUMN CNTRLDLS06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_actual FOR COLUMN CNTRLDLS07 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    tasa_interes FOR COLUMN CNTRLDLS08 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    plazo_meses FOR COLUMN CNTRLDLS09 INTEGER
        NOT NULL WITH DEFAULT 0,
    dias_mora FOR COLUMN CNTRLDLS10 INTEGER
        NOT NULL WITH DEFAULT 0,
    estado_operacion FOR COLUMN CNTRLDLS11 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN CNTRLDLS12 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN CNTRLDLS13 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN CNTRLDLS14 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN CNTRLDLS15 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN CNTRLDLS16 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN CNTRLDLS17 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN CNTRLDLS18 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT CNTRLDLS_PK PRIMARY KEY (
        codigo_banco,
        numero_tabla,
        tipo_producto
    )
)
RCDFMT RCNTRLDLS;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE CNTRLDLS IS 'Generated table for CNTRLDLS.';

LABEL ON TABLE CNTRLDLS IS 'CNTRLDLS table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN CNTRLDLS
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN CNTRLDLS
    (numero_tabla IS 'Number Table field.');
COMMENT ON COLUMN CNTRLDLS
    (tipo_producto IS 'Type Product field.');
COMMENT ON COLUMN CNTRLDLS
    (fecha_desembolso IS 'Date Desembolso field.');
COMMENT ON COLUMN CNTRLDLS
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN CNTRLDLS
    (monto_original IS 'Amount Original field.');
COMMENT ON COLUMN CNTRLDLS
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN CNTRLDLS
    (tasa_interes IS 'Rate Interes field.');
COMMENT ON COLUMN CNTRLDLS
    (plazo_meses IS 'Term Months field.');
COMMENT ON COLUMN CNTRLDLS
    (dias_mora IS 'Dias Mora field.');
COMMENT ON COLUMN CNTRLDLS
    (estado_operacion IS 'Status Operation field.');
COMMENT ON COLUMN CNTRLDLS
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN CNTRLDLS
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN CNTRLDLS
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN CNTRLDLS
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN CNTRLDLS
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN CNTRLDLS
    (created_at IS 'Created At field.');
COMMENT ON COLUMN CNTRLDLS
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN CNTRLDLS (
    codigo_banco IS 'Code Bank',
    numero_tabla IS 'Number Table',
    tipo_producto IS 'Type Product',
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

LABEL ON COLUMN CNTRLDLS (
    codigo_banco TEXT IS 'Code Bank value for the record',
    numero_tabla TEXT IS 'Number Table value for the record',
    tipo_producto TEXT IS 'Type Product value for the record',
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
