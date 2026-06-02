--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       IFDTL
-- DESCRIPCION:              Generated table for IFDTL.
-- Objetivo:                 Store operational data for IFDTL.
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
-- Program Name:             IFDTL

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE IFDTL
(
    id_cliente FOR COLUMN IFDTL01 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    anio FOR COLUMN IFDTL02 INTEGER
        NOT NULL WITH DEFAULT 0,
    mes FOR COLUMN IFDTL03 INTEGER
        NOT NULL WITH DEFAULT 0,
    formato_balance FOR COLUMN IFDTL04 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    codigo_linea FOR COLUMN IFDTL05 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_cuenta FOR COLUMN IFDTL06 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    fecha_propuesta FOR COLUMN IFDTL07 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_solicitado FOR COLUMN IFDTL08 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    plazo_meses FOR COLUMN IFDTL09 INTEGER
        NOT NULL WITH DEFAULT 0,
    tasa_propuesta FOR COLUMN IFDTL10 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    dictamen_credito FOR COLUMN IFDTL11 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_propuesta FOR COLUMN IFDTL12 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN IFDTL13 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN IFDTL14 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN IFDTL15 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN IFDTL16 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN IFDTL17 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN IFDTL18 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN IFDTL19 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT IFDTL_PK PRIMARY KEY (
        id_cliente,
        anio,
        mes,
        formato_balance,
        codigo_linea,
        codigo_cuenta
    )
)
RCDFMT RIFDTL;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE IFDTL IS 'Generated table for IFDTL.';

LABEL ON TABLE IFDTL IS 'IFDTL table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN IFDTL
    (id_cliente IS 'Id Customer field.');
COMMENT ON COLUMN IFDTL
    (anio IS 'Year field.');
COMMENT ON COLUMN IFDTL
    (mes IS 'Month field.');
COMMENT ON COLUMN IFDTL
    (formato_balance IS 'Format Balance field.');
COMMENT ON COLUMN IFDTL
    (codigo_linea IS 'Code Line field.');
COMMENT ON COLUMN IFDTL
    (codigo_cuenta IS 'Code Account field.');
COMMENT ON COLUMN IFDTL
    (fecha_propuesta IS 'Date Proposal field.');
COMMENT ON COLUMN IFDTL
    (monto_solicitado IS 'Amount Solicitado field.');
COMMENT ON COLUMN IFDTL
    (plazo_meses IS 'Term Months field.');
COMMENT ON COLUMN IFDTL
    (tasa_propuesta IS 'Rate Proposal field.');
COMMENT ON COLUMN IFDTL
    (dictamen_credito IS 'Decision Credit field.');
COMMENT ON COLUMN IFDTL
    (estado_propuesta IS 'Status Proposal field.');
COMMENT ON COLUMN IFDTL
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN IFDTL
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN IFDTL
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN IFDTL
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN IFDTL
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN IFDTL
    (created_at IS 'Created At field.');
COMMENT ON COLUMN IFDTL
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN IFDTL (
    id_cliente IS 'Id Customer',
    anio IS 'Year',
    mes IS 'Month',
    formato_balance IS 'Format Balance',
    codigo_linea IS 'Code Line',
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

LABEL ON COLUMN IFDTL (
    id_cliente TEXT IS 'Id Customer value for the record',
    anio TEXT IS 'Year value for the record',
    mes TEXT IS 'Month value for the record',
    formato_balance TEXT IS 'Format Balance value for the record',
    codigo_linea TEXT IS 'Code Line value for the record',
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
