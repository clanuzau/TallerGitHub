--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       DPMST
-- DESCRIPCION:              Generated table for DPMST.
-- Objetivo:                 Store operational data for DPMST.
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
-- Program Name:             DPMST

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE DPMST
(
    id_cliente FOR COLUMN DPMST01 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    secuencia FOR COLUMN DPMST02 INTEGER
        NOT NULL WITH DEFAULT 0,
    fecha_propuesta FOR COLUMN DPMST03 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_solicitado FOR COLUMN DPMST04 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    plazo_meses FOR COLUMN DPMST05 INTEGER
        NOT NULL WITH DEFAULT 0,
    tasa_propuesta FOR COLUMN DPMST06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    dictamen_credito FOR COLUMN DPMST07 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_propuesta FOR COLUMN DPMST08 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN DPMST09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN DPMST10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN DPMST11 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN DPMST12 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN DPMST13 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN DPMST14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN DPMST15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT DPMST_PK PRIMARY KEY (
        id_cliente,
        secuencia
    )
)
RCDFMT RDPMST;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE DPMST IS 'Generated table for DPMST.';

LABEL ON TABLE DPMST IS 'DPMST table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN DPMST
    (id_cliente IS 'Id Customer field.');
COMMENT ON COLUMN DPMST
    (secuencia IS 'Sequence field.');
COMMENT ON COLUMN DPMST
    (fecha_propuesta IS 'Date Proposal field.');
COMMENT ON COLUMN DPMST
    (monto_solicitado IS 'Amount Solicitado field.');
COMMENT ON COLUMN DPMST
    (plazo_meses IS 'Term Months field.');
COMMENT ON COLUMN DPMST
    (tasa_propuesta IS 'Rate Proposal field.');
COMMENT ON COLUMN DPMST
    (dictamen_credito IS 'Decision Credit field.');
COMMENT ON COLUMN DPMST
    (estado_propuesta IS 'Status Proposal field.');
COMMENT ON COLUMN DPMST
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN DPMST
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN DPMST
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN DPMST
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN DPMST
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN DPMST
    (created_at IS 'Created At field.');
COMMENT ON COLUMN DPMST
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN DPMST (
    id_cliente IS 'Id Customer',
    secuencia IS 'Sequence',
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

LABEL ON COLUMN DPMST (
    id_cliente TEXT IS 'Id Customer value for the record',
    secuencia TEXT IS 'Sequence value for the record',
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
