--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       CNTRLNUM
-- DESCRIPCION:              Generated table for CNTRLNUM.
-- Objetivo:                 Store operational data for CNTRLNUM.
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
-- Program Name:             CNTRLNUM

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE CNTRLNUM
(
    codigo_aplicacion FOR COLUMN CNTRLNUM01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    tipo_cuenta FOR COLUMN CNTRLNUM02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    descripcion FOR COLUMN CNTRLNUM03 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    valor_texto FOR COLUMN CNTRLNUM04 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    valor_numerico FOR COLUMN CNTRLNUM05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    vigencia_desde FOR COLUMN CNTRLNUM06 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    vigencia_hasta FOR COLUMN CNTRLNUM07 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    orden_visualizacion FOR COLUMN CNTRLNUM08 INTEGER
        NOT NULL WITH DEFAULT 0,
    usuario_creacion FOR COLUMN CNTRLNUM09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN CNTRLNUM10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN CNTRLNUM11 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN CNTRLNUM12 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN CNTRLNUM13 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN CNTRLNUM14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN CNTRLNUM15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT CNTRLNUM_PK PRIMARY KEY (
        codigo_aplicacion,
        tipo_cuenta
    )
)
RCDFMT RCNTRLNUM;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE CNTRLNUM IS 'Generated table for CNTRLNUM.';

LABEL ON TABLE CNTRLNUM IS 'CNTRLNUM table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN CNTRLNUM
    (codigo_aplicacion IS 'Code Aplicacion field.');
COMMENT ON COLUMN CNTRLNUM
    (tipo_cuenta IS 'Type Account field.');
COMMENT ON COLUMN CNTRLNUM
    (descripcion IS 'Description field.');
COMMENT ON COLUMN CNTRLNUM
    (valor_texto IS 'Value Text field.');
COMMENT ON COLUMN CNTRLNUM
    (valor_numerico IS 'Value Numeric field.');
COMMENT ON COLUMN CNTRLNUM
    (vigencia_desde IS 'Effective Start field.');
COMMENT ON COLUMN CNTRLNUM
    (vigencia_hasta IS 'Effective End field.');
COMMENT ON COLUMN CNTRLNUM
    (orden_visualizacion IS 'Order Display field.');
COMMENT ON COLUMN CNTRLNUM
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN CNTRLNUM
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN CNTRLNUM
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN CNTRLNUM
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN CNTRLNUM
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN CNTRLNUM
    (created_at IS 'Created At field.');
COMMENT ON COLUMN CNTRLNUM
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN CNTRLNUM (
    codigo_aplicacion IS 'Code Aplicacion',
    tipo_cuenta IS 'Type Account',
    descripcion IS 'Description',
    valor_texto IS 'Value Text',
    valor_numerico IS 'Value Numeric',
    vigencia_desde IS 'Effective Start',
    vigencia_hasta IS 'Effective End',
    orden_visualizacion IS 'Order Display',
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

LABEL ON COLUMN CNTRLNUM (
    codigo_aplicacion TEXT IS 'Code Aplicacion value for the record',
    tipo_cuenta TEXT IS 'Type Account value for the record',
    descripcion TEXT IS 'Description value for the record',
    valor_texto TEXT IS 'Value Text value for the record',
    valor_numerico TEXT IS 'Value Numeric value for the record',
    vigencia_desde TEXT IS 'Effective Start value for the record',
    vigencia_hasta TEXT IS 'Effective End value for the record',
    orden_visualizacion TEXT IS 'Order Display value for the record',
    usuario_creacion TEXT IS 'User Creation value for the record',
    usuario_actualizacion TEXT IS 'User Update value for the record',
    version_registro TEXT IS 'Version Record value for the record',
    observaciones TEXT IS 'Notes value for the record',
    estado_registro TEXT IS 'Status Record value for the record',
    created_at TEXT IS 'Created At value for the record',
    updated_at TEXT IS 'Updated At value for the record'
);
