--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       LIMST
-- DESCRIPCION:              Generated table for LIMST.
-- Objetivo:                 Store operational data for LIMST.
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
-- Program Name:             LIMST

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE LIMST
(
    id_cliente FOR COLUMN LIMST01 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    fecha_propuesta FOR COLUMN LIMST02 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_solicitado FOR COLUMN LIMST03 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    plazo_meses FOR COLUMN LIMST04 INTEGER
        NOT NULL WITH DEFAULT 0,
    tasa_propuesta FOR COLUMN LIMST05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    dictamen_credito FOR COLUMN LIMST06 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_propuesta FOR COLUMN LIMST07 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN LIMST08 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN LIMST09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN LIMST10 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN LIMST11 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN LIMST12 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN LIMST13 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN LIMST14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT LIMST_PK PRIMARY KEY (
        id_cliente
    )
)
RCDFMT RLIMST;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE LIMST IS 'Generated table for LIMST.';

LABEL ON TABLE LIMST IS 'LIMST table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN LIMST
    (id_cliente IS 'Id Customer field.');
COMMENT ON COLUMN LIMST
    (fecha_propuesta IS 'Date Proposal field.');
COMMENT ON COLUMN LIMST
    (monto_solicitado IS 'Amount Solicitado field.');
COMMENT ON COLUMN LIMST
    (plazo_meses IS 'Term Months field.');
COMMENT ON COLUMN LIMST
    (tasa_propuesta IS 'Rate Proposal field.');
COMMENT ON COLUMN LIMST
    (dictamen_credito IS 'Decision Credit field.');
COMMENT ON COLUMN LIMST
    (estado_propuesta IS 'Status Proposal field.');
COMMENT ON COLUMN LIMST
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN LIMST
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN LIMST
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN LIMST
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN LIMST
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN LIMST
    (created_at IS 'Created At field.');
COMMENT ON COLUMN LIMST
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN LIMST (
    id_cliente IS 'Id Customer',
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

LABEL ON COLUMN LIMST (
    id_cliente TEXT IS 'Id Customer value for the record',
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
