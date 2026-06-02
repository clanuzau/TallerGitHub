--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       PLGRT
-- DESCRIPCION:              Generated table for PLGRT.
-- Objetivo:                 Store operational data for PLGRT.
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
-- Program Name:             PLGRT

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE PLGRT
(
    numero_propuesta FOR COLUMN PLGRT01 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    secuencia FOR COLUMN PLGRT02 INTEGER
        NOT NULL WITH DEFAULT 0,
    fecha_propuesta FOR COLUMN PLGRT03 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_solicitado FOR COLUMN PLGRT04 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    plazo_meses FOR COLUMN PLGRT05 INTEGER
        NOT NULL WITH DEFAULT 0,
    tasa_propuesta FOR COLUMN PLGRT06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    dictamen_credito FOR COLUMN PLGRT07 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_propuesta FOR COLUMN PLGRT08 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN PLGRT09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN PLGRT10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN PLGRT11 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN PLGRT12 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN PLGRT13 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN PLGRT14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN PLGRT15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT PLGRT_PK PRIMARY KEY (
        numero_propuesta,
        secuencia
    )
)
RCDFMT RPLGRT;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE PLGRT IS 'Generated table for PLGRT.';

LABEL ON TABLE PLGRT IS 'PLGRT table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN PLGRT
    (numero_propuesta IS 'Number Proposal field.');
COMMENT ON COLUMN PLGRT
    (secuencia IS 'Sequence field.');
COMMENT ON COLUMN PLGRT
    (fecha_propuesta IS 'Date Proposal field.');
COMMENT ON COLUMN PLGRT
    (monto_solicitado IS 'Amount Solicitado field.');
COMMENT ON COLUMN PLGRT
    (plazo_meses IS 'Term Months field.');
COMMENT ON COLUMN PLGRT
    (tasa_propuesta IS 'Rate Proposal field.');
COMMENT ON COLUMN PLGRT
    (dictamen_credito IS 'Decision Credit field.');
COMMENT ON COLUMN PLGRT
    (estado_propuesta IS 'Status Proposal field.');
COMMENT ON COLUMN PLGRT
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN PLGRT
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN PLGRT
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN PLGRT
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN PLGRT
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN PLGRT
    (created_at IS 'Created At field.');
COMMENT ON COLUMN PLGRT
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN PLGRT (
    numero_propuesta IS 'Number Proposal',
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

LABEL ON COLUMN PLGRT (
    numero_propuesta TEXT IS 'Number Proposal value for the record',
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
