--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       DCMST
-- DESCRIPCION:              Generated table for DCMST.
-- Objetivo:                 Store operational data for DCMST.
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
-- Program Name:             DCMST

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE DCMST
(
    id FOR COLUMN DCMST01 BIGINT
        NOT NULL WITH DEFAULT 0,
    fecha_recepcion FOR COLUMN DCMST02 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN DCMST03 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    monto_original FOR COLUMN DCMST04 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    saldo_pendiente FOR COLUMN DCMST05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    tipo_documento FOR COLUMN DCMST06 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    estado_operacion FOR COLUMN DCMST07 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN DCMST08 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN DCMST09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN DCMST10 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN DCMST11 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN DCMST12 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN DCMST13 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN DCMST14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT DCMST_PK PRIMARY KEY (
        id
    )
)
RCDFMT RDCMST;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE DCMST IS 'Generated table for DCMST.';

LABEL ON TABLE DCMST IS 'DCMST table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN DCMST
    (id IS 'Id field.');
COMMENT ON COLUMN DCMST
    (fecha_recepcion IS 'Date Recepcion field.');
COMMENT ON COLUMN DCMST
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN DCMST
    (monto_original IS 'Amount Original field.');
COMMENT ON COLUMN DCMST
    (saldo_pendiente IS 'Balance Pending field.');
COMMENT ON COLUMN DCMST
    (tipo_documento IS 'Type Document field.');
COMMENT ON COLUMN DCMST
    (estado_operacion IS 'Status Operation field.');
COMMENT ON COLUMN DCMST
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN DCMST
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN DCMST
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN DCMST
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN DCMST
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN DCMST
    (created_at IS 'Created At field.');
COMMENT ON COLUMN DCMST
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN DCMST (
    id IS 'Id',
    fecha_recepcion IS 'Date Recepcion',
    fecha_vencimiento IS 'Date Due',
    monto_original IS 'Amount Original',
    saldo_pendiente IS 'Balance Pending',
    tipo_documento IS 'Type Document',
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

LABEL ON COLUMN DCMST (
    id TEXT IS 'Id value for the record',
    fecha_recepcion TEXT IS 'Date Recepcion value for the record',
    fecha_vencimiento TEXT IS 'Date Due value for the record',
    monto_original TEXT IS 'Amount Original value for the record',
    saldo_pendiente TEXT IS 'Balance Pending value for the record',
    tipo_documento TEXT IS 'Type Document value for the record',
    estado_operacion TEXT IS 'Status Operation value for the record',
    usuario_creacion TEXT IS 'User Creation value for the record',
    usuario_actualizacion TEXT IS 'User Update value for the record',
    version_registro TEXT IS 'Version Record value for the record',
    observaciones TEXT IS 'Notes value for the record',
    estado_registro TEXT IS 'Status Record value for the record',
    created_at TEXT IS 'Created At value for the record',
    updated_at TEXT IS 'Updated At value for the record'
);
