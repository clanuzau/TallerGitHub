--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       PLPRD
-- DESCRIPCION:              Generated table for PLPRD.
-- Objetivo:                 Store operational data for PLPRD.
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
-- Program Name:             PLPRD

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE PLPRD
(
    numero_propuesta FOR COLUMN PLPRD01 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    codigo_producto FOR COLUMN PLPRD02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    tipo_producto FOR COLUMN PLPRD03 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    fecha_propuesta FOR COLUMN PLPRD04 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_solicitado FOR COLUMN PLPRD05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    plazo_meses FOR COLUMN PLPRD06 INTEGER
        NOT NULL WITH DEFAULT 0,
    tasa_propuesta FOR COLUMN PLPRD07 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    dictamen_credito FOR COLUMN PLPRD08 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_propuesta FOR COLUMN PLPRD09 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN PLPRD10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN PLPRD11 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN PLPRD12 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN PLPRD13 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN PLPRD14 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN PLPRD15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN PLPRD16 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT PLPRD_PK PRIMARY KEY (
        numero_propuesta,
        codigo_producto,
        tipo_producto
    )
)
RCDFMT RPLPRD;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE PLPRD IS 'Generated table for PLPRD.';

LABEL ON TABLE PLPRD IS 'PLPRD table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN PLPRD
    (numero_propuesta IS 'Number Proposal field.');
COMMENT ON COLUMN PLPRD
    (codigo_producto IS 'Code Product field.');
COMMENT ON COLUMN PLPRD
    (tipo_producto IS 'Type Product field.');
COMMENT ON COLUMN PLPRD
    (fecha_propuesta IS 'Date Proposal field.');
COMMENT ON COLUMN PLPRD
    (monto_solicitado IS 'Amount Solicitado field.');
COMMENT ON COLUMN PLPRD
    (plazo_meses IS 'Term Months field.');
COMMENT ON COLUMN PLPRD
    (tasa_propuesta IS 'Rate Proposal field.');
COMMENT ON COLUMN PLPRD
    (dictamen_credito IS 'Decision Credit field.');
COMMENT ON COLUMN PLPRD
    (estado_propuesta IS 'Status Proposal field.');
COMMENT ON COLUMN PLPRD
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN PLPRD
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN PLPRD
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN PLPRD
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN PLPRD
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN PLPRD
    (created_at IS 'Created At field.');
COMMENT ON COLUMN PLPRD
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN PLPRD (
    numero_propuesta IS 'Number Proposal',
    codigo_producto IS 'Code Product',
    tipo_producto IS 'Type Product',
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

LABEL ON COLUMN PLPRD (
    numero_propuesta TEXT IS 'Number Proposal value for the record',
    codigo_producto TEXT IS 'Code Product value for the record',
    tipo_producto TEXT IS 'Type Product value for the record',
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
