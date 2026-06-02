--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       PLPCR
-- DESCRIPCION:              Generated table for PLPCR.
-- Objetivo:                 Store operational data for PLPCR.
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
-- Program Name:             PLPCR

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE PLPCR
(
    numero_propuesta FOR COLUMN PLPCR01 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    fecha_propuesta FOR COLUMN PLPCR02 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_solicitado FOR COLUMN PLPCR03 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    plazo_meses FOR COLUMN PLPCR04 INTEGER
        NOT NULL WITH DEFAULT 0,
    tasa_propuesta FOR COLUMN PLPCR05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    dictamen_credito FOR COLUMN PLPCR06 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_propuesta FOR COLUMN PLPCR07 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN PLPCR08 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN PLPCR09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN PLPCR10 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN PLPCR11 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN PLPCR12 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN PLPCR13 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN PLPCR14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT PLPCR_PK PRIMARY KEY (
        numero_propuesta
    )
)
RCDFMT RPLPCR;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE PLPCR IS 'Generated table for PLPCR.';

LABEL ON TABLE PLPCR IS 'PLPCR table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN PLPCR
    (numero_propuesta IS 'Number Proposal field.');
COMMENT ON COLUMN PLPCR
    (fecha_propuesta IS 'Date Proposal field.');
COMMENT ON COLUMN PLPCR
    (monto_solicitado IS 'Amount Solicitado field.');
COMMENT ON COLUMN PLPCR
    (plazo_meses IS 'Term Months field.');
COMMENT ON COLUMN PLPCR
    (tasa_propuesta IS 'Rate Proposal field.');
COMMENT ON COLUMN PLPCR
    (dictamen_credito IS 'Decision Credit field.');
COMMENT ON COLUMN PLPCR
    (estado_propuesta IS 'Status Proposal field.');
COMMENT ON COLUMN PLPCR
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN PLPCR
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN PLPCR
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN PLPCR
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN PLPCR
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN PLPCR
    (created_at IS 'Created At field.');
COMMENT ON COLUMN PLPCR
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN PLPCR (
    numero_propuesta IS 'Number Proposal',
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

LABEL ON COLUMN PLPCR (
    numero_propuesta TEXT IS 'Number Proposal value for the record',
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
