--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       MLNOT
-- DESCRIPCION:              Generated table for MLNOT.
-- Objetivo:                 Store operational data for MLNOT.
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
-- Program Name:             MLNOT

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE MLNOT
(
    codigo_banco FOR COLUMN MLNOT01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    fecha_proceso FOR COLUMN MLNOT02 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    numero_cuenta FOR COLUMN MLNOT03 VARCHAR(24)
        NOT NULL WITH DEFAULT '',
    codigo_de_notificacion FOR COLUMN MLNOT04 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    nivel FOR COLUMN MLNOT05 INTEGER
        NOT NULL WITH DEFAULT 0,
    descripcion FOR COLUMN MLNOT06 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    valor_texto FOR COLUMN MLNOT07 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    valor_numerico FOR COLUMN MLNOT08 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    vigencia_desde FOR COLUMN MLNOT09 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    vigencia_hasta FOR COLUMN MLNOT10 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    orden_visualizacion FOR COLUMN MLNOT11 INTEGER
        NOT NULL WITH DEFAULT 0,
    usuario_creacion FOR COLUMN MLNOT12 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN MLNOT13 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN MLNOT14 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN MLNOT15 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN MLNOT16 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN MLNOT17 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN MLNOT18 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT MLNOT_PK PRIMARY KEY (
        codigo_banco,
        fecha_proceso,
        numero_cuenta,
        codigo_de_notificacion,
        nivel
    )
)
RCDFMT RMLNOT;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE MLNOT IS 'Generated table for MLNOT.';

LABEL ON TABLE MLNOT IS 'MLNOT table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN MLNOT
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN MLNOT
    (fecha_proceso IS 'Date Process field.');
COMMENT ON COLUMN MLNOT
    (numero_cuenta IS 'Number Account field.');
COMMENT ON COLUMN MLNOT
    (codigo_de_notificacion IS 'Code De Notice field.');
COMMENT ON COLUMN MLNOT
    (nivel IS 'Level field.');
COMMENT ON COLUMN MLNOT
    (descripcion IS 'Description field.');
COMMENT ON COLUMN MLNOT
    (valor_texto IS 'Value Text field.');
COMMENT ON COLUMN MLNOT
    (valor_numerico IS 'Value Numeric field.');
COMMENT ON COLUMN MLNOT
    (vigencia_desde IS 'Effective Start field.');
COMMENT ON COLUMN MLNOT
    (vigencia_hasta IS 'Effective End field.');
COMMENT ON COLUMN MLNOT
    (orden_visualizacion IS 'Order Display field.');
COMMENT ON COLUMN MLNOT
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN MLNOT
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN MLNOT
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN MLNOT
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN MLNOT
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN MLNOT
    (created_at IS 'Created At field.');
COMMENT ON COLUMN MLNOT
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN MLNOT (
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

LABEL ON COLUMN MLNOT (
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
