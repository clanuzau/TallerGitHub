--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       LNECR
-- DESCRIPCION:              Generated table for LNECR.
-- Objetivo:                 Store operational data for LNECR.
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
-- Program Name:             LNECR

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE LNECR
(
    id_cliente FOR COLUMN LNECR01 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    numero_linea FOR COLUMN LNECR02 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    fecha_aprobacion FOR COLUMN LNECR03 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN LNECR04 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_aprobado FOR COLUMN LNECR05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    monto_utilizado FOR COLUMN LNECR06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    monto_disponible FOR COLUMN LNECR07 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    estado_linea FOR COLUMN LNECR08 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN LNECR09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN LNECR10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN LNECR11 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN LNECR12 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN LNECR13 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN LNECR14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN LNECR15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT LNECR_PK PRIMARY KEY (
        id_cliente,
        numero_linea
    )
)
RCDFMT RLNECR;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE LNECR IS 'Generated table for LNECR.';

LABEL ON TABLE LNECR IS 'LNECR table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN LNECR
    (id_cliente IS 'Id Customer field.');
COMMENT ON COLUMN LNECR
    (numero_linea IS 'Number Line field.');
COMMENT ON COLUMN LNECR
    (fecha_aprobacion IS 'Date Approval field.');
COMMENT ON COLUMN LNECR
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN LNECR
    (monto_aprobado IS 'Amount Aprobado field.');
COMMENT ON COLUMN LNECR
    (monto_utilizado IS 'Amount Utilizado field.');
COMMENT ON COLUMN LNECR
    (monto_disponible IS 'Amount Disponible field.');
COMMENT ON COLUMN LNECR
    (estado_linea IS 'Status Line field.');
COMMENT ON COLUMN LNECR
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN LNECR
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN LNECR
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN LNECR
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN LNECR
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN LNECR
    (created_at IS 'Created At field.');
COMMENT ON COLUMN LNECR
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN LNECR (
    id_cliente IS 'Id Customer',
    numero_linea IS 'Number Line',
    fecha_aprobacion IS 'Date Approval',
    fecha_vencimiento IS 'Date Due',
    monto_aprobado IS 'Amount Aprobado',
    monto_utilizado IS 'Amount Utilizado',
    monto_disponible IS 'Amount Disponible',
    estado_linea IS 'Status Line',
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

LABEL ON COLUMN LNECR (
    id_cliente TEXT IS 'Id Customer value for the record',
    numero_linea TEXT IS 'Number Line value for the record',
    fecha_aprobacion TEXT IS 'Date Approval value for the record',
    fecha_vencimiento TEXT IS 'Date Due value for the record',
    monto_aprobado TEXT IS 'Amount Aprobado value for the record',
    monto_utilizado TEXT IS 'Amount Utilizado value for the record',
    monto_disponible TEXT IS 'Amount Disponible value for the record',
    estado_linea TEXT IS 'Status Line value for the record',
    usuario_creacion TEXT IS 'User Creation value for the record',
    usuario_actualizacion TEXT IS 'User Update value for the record',
    version_registro TEXT IS 'Version Record value for the record',
    observaciones TEXT IS 'Notes value for the record',
    estado_registro TEXT IS 'Status Record value for the record',
    created_at TEXT IS 'Created At value for the record',
    updated_at TEXT IS 'Updated At value for the record'
);
