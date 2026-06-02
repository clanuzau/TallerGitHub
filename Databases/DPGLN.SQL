--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       DPGLN
-- DESCRIPCION:              Generated table for DPGLN.
-- Objetivo:                 Store operational data for DPGLN.
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
-- Program Name:             DPGLN

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE DPGLN
(
    tipo_balance FOR COLUMN DPGLN01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_cuenta FOR COLUMN DPGLN02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    fecha_propuesta FOR COLUMN DPGLN03 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_solicitado FOR COLUMN DPGLN04 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    plazo_meses FOR COLUMN DPGLN05 INTEGER
        NOT NULL WITH DEFAULT 0,
    tasa_propuesta FOR COLUMN DPGLN06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    dictamen_credito FOR COLUMN DPGLN07 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_propuesta FOR COLUMN DPGLN08 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN DPGLN09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN DPGLN10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN DPGLN11 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN DPGLN12 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN DPGLN13 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN DPGLN14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN DPGLN15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT DPGLN_PK PRIMARY KEY (
        tipo_balance,
        codigo_cuenta
    )
)
RCDFMT RDPGLN;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE DPGLN IS 'Generated table for DPGLN.';

LABEL ON TABLE DPGLN IS 'DPGLN table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN DPGLN
    (tipo_balance IS 'Type Balance field.');
COMMENT ON COLUMN DPGLN
    (codigo_cuenta IS 'Code Account field.');
COMMENT ON COLUMN DPGLN
    (fecha_propuesta IS 'Date Proposal field.');
COMMENT ON COLUMN DPGLN
    (monto_solicitado IS 'Amount Solicitado field.');
COMMENT ON COLUMN DPGLN
    (plazo_meses IS 'Term Months field.');
COMMENT ON COLUMN DPGLN
    (tasa_propuesta IS 'Rate Proposal field.');
COMMENT ON COLUMN DPGLN
    (dictamen_credito IS 'Decision Credit field.');
COMMENT ON COLUMN DPGLN
    (estado_propuesta IS 'Status Proposal field.');
COMMENT ON COLUMN DPGLN
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN DPGLN
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN DPGLN
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN DPGLN
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN DPGLN
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN DPGLN
    (created_at IS 'Created At field.');
COMMENT ON COLUMN DPGLN
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN DPGLN (
    tipo_balance IS 'Type Balance',
    codigo_cuenta IS 'Code Account',
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

LABEL ON COLUMN DPGLN (
    tipo_balance TEXT IS 'Type Balance value for the record',
    codigo_cuenta TEXT IS 'Code Account value for the record',
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
