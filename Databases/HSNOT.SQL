--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       HSNOT
-- DESCRIPCION:              Generated table for HSNOT.
-- Objetivo:                 Store operational data for HSNOT.
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
-- Program Name:             HSNOT

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE HSNOT
(
    codigo_banco FOR COLUMN HSNOT01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    fecha_proceso FOR COLUMN HSNOT02 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    numero_cuenta FOR COLUMN HSNOT03 VARCHAR(24)
        NOT NULL WITH DEFAULT '',
    codigo_de_notificacion FOR COLUMN HSNOT04 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    nivel FOR COLUMN HSNOT05 INTEGER
        NOT NULL WITH DEFAULT 0,
    descripcion FOR COLUMN HSNOT06 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    valor_texto FOR COLUMN HSNOT07 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    valor_numerico FOR COLUMN HSNOT08 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    vigencia_desde FOR COLUMN HSNOT09 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    vigencia_hasta FOR COLUMN HSNOT10 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    orden_visualizacion FOR COLUMN HSNOT11 INTEGER
        NOT NULL WITH DEFAULT 0,
    usuario_creacion FOR COLUMN HSNOT12 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN HSNOT13 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN HSNOT14 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN HSNOT15 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN HSNOT16 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN HSNOT17 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN HSNOT18 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT HSNOT_PK PRIMARY KEY (
        codigo_banco,
        fecha_proceso,
        numero_cuenta,
        codigo_de_notificacion,
        nivel
    )
)
RCDFMT RHSNOT;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE HSNOT IS 'Generated table for HSNOT.';

LABEL ON TABLE HSNOT IS 'HSNOT table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN HSNOT
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN HSNOT
    (fecha_proceso IS 'Date Process field.');
COMMENT ON COLUMN HSNOT
    (numero_cuenta IS 'Number Account field.');
COMMENT ON COLUMN HSNOT
    (codigo_de_notificacion IS 'Code De Notice field.');
COMMENT ON COLUMN HSNOT
    (nivel IS 'Level field.');
COMMENT ON COLUMN HSNOT
    (descripcion IS 'Description field.');
COMMENT ON COLUMN HSNOT
    (valor_texto IS 'Value Text field.');
COMMENT ON COLUMN HSNOT
    (valor_numerico IS 'Value Numeric field.');
COMMENT ON COLUMN HSNOT
    (vigencia_desde IS 'Effective Start field.');
COMMENT ON COLUMN HSNOT
    (vigencia_hasta IS 'Effective End field.');
COMMENT ON COLUMN HSNOT
    (orden_visualizacion IS 'Order Display field.');
COMMENT ON COLUMN HSNOT
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN HSNOT
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN HSNOT
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN HSNOT
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN HSNOT
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN HSNOT
    (created_at IS 'Created At field.');
COMMENT ON COLUMN HSNOT
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN HSNOT (
    codigo_banco IS 'Code Bank',
    fecha_proceso IS 'Date Process',
    numero_cuenta IS 'Number Account',
    codigo_de_notificacion IS 'Code De Notice',
    nivel IS 'Level',
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

LABEL ON COLUMN HSNOT (
    codigo_banco TEXT IS 'Code Bank value for the record',
    fecha_proceso TEXT IS 'Date Process value for the record',
    numero_cuenta TEXT IS 'Number Account value for the record',
    codigo_de_notificacion TEXT IS 'Code De Notice value for the record',
    nivel TEXT IS 'Level value for the record',
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
