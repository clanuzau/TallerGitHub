--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       DPDTL
-- DESCRIPCION:              Generated table for DPDTL.
-- Objetivo:                 Store operational data for DPDTL.
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
-- Program Name:             DPDTL

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE DPDTL
(
    id_cliente FOR COLUMN DPDTL01 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    secuencia FOR COLUMN DPDTL02 INTEGER
        NOT NULL WITH DEFAULT 0,
    tipo_registro FOR COLUMN DPDTL03 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    fecha_propuesta FOR COLUMN DPDTL04 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_solicitado FOR COLUMN DPDTL05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    plazo_meses FOR COLUMN DPDTL06 INTEGER
        NOT NULL WITH DEFAULT 0,
    tasa_propuesta FOR COLUMN DPDTL07 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    dictamen_credito FOR COLUMN DPDTL08 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_propuesta FOR COLUMN DPDTL09 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN DPDTL10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN DPDTL11 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN DPDTL12 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN DPDTL13 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN DPDTL14 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN DPDTL15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN DPDTL16 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT DPDTL_PK PRIMARY KEY (
        id_cliente,
        secuencia,
        tipo_registro
    )
)
RCDFMT RDPDTL;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE DPDTL IS 'Generated table for DPDTL.';

LABEL ON TABLE DPDTL IS 'DPDTL table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN DPDTL
    (id_cliente IS 'Id Customer field.');
COMMENT ON COLUMN DPDTL
    (secuencia IS 'Sequence field.');
COMMENT ON COLUMN DPDTL
    (tipo_registro IS 'Type Record field.');
COMMENT ON COLUMN DPDTL
    (fecha_propuesta IS 'Date Proposal field.');
COMMENT ON COLUMN DPDTL
    (monto_solicitado IS 'Amount Solicitado field.');
COMMENT ON COLUMN DPDTL
    (plazo_meses IS 'Term Months field.');
COMMENT ON COLUMN DPDTL
    (tasa_propuesta IS 'Rate Proposal field.');
COMMENT ON COLUMN DPDTL
    (dictamen_credito IS 'Decision Credit field.');
COMMENT ON COLUMN DPDTL
    (estado_propuesta IS 'Status Proposal field.');
COMMENT ON COLUMN DPDTL
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN DPDTL
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN DPDTL
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN DPDTL
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN DPDTL
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN DPDTL
    (created_at IS 'Created At field.');
COMMENT ON COLUMN DPDTL
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN DPDTL (
    id_cliente IS 'Id Customer',
    secuencia IS 'Sequence',
    tipo_registro IS 'Type Record',
    fecha_propuesta IS 'Date Proposal',
    monto_solicitado IS 'Amount Solicitado',
    plazo_meses IS 'Term Months',
    tasa_propuesta IS 'Rate Proposal',
    dictamen_credito IS 'Decision Credit',
    estado_propuesta IS 'Status Proposal',
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

LABEL ON COLUMN DPDTL (
    id_cliente TEXT IS 'Id Customer value for the record',
    secuencia TEXT IS 'Sequence value for the record',
    tipo_registro TEXT IS 'Type Record value for the record',
    fecha_propuesta TEXT IS 'Date Proposal value for the record',
    monto_solicitado TEXT IS 'Amount Solicitado value for the record',
    plazo_meses TEXT IS 'Term Months value for the record',
    tasa_propuesta TEXT IS 'Rate Proposal value for the record',
    dictamen_credito TEXT IS 'Decision Credit value for the record',
    estado_propuesta TEXT IS 'Status Proposal value for the record',
    usuario_creacion TEXT IS 'User Creation value for the record',
    usuario_actualizacion TEXT IS 'User Update value for the record',
    version_registro TEXT IS 'Version Record value for the record',
    observaciones TEXT IS 'Notes value for the record',
    estado_registro TEXT IS 'Status Record value for the record',
    created_at TEXT IS 'Created At value for the record',
    updated_at TEXT IS 'Updated At value for the record'
);
