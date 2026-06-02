--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       MICRF
-- DESCRIPCION:              Generated table for MICRF.
-- Objetivo:                 Store operational data for MICRF.
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
-- Program Name:             MICRF

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE MICRF
(
    tipo_formulario FOR COLUMN MICRF01 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    nombre_reporte FOR COLUMN MICRF02 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    secuencia FOR COLUMN MICRF03 INTEGER
        NOT NULL WITH DEFAULT 0,
    descripcion FOR COLUMN MICRF04 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    valor_texto FOR COLUMN MICRF05 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    valor_numerico FOR COLUMN MICRF06 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    vigencia_desde FOR COLUMN MICRF07 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    vigencia_hasta FOR COLUMN MICRF08 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    orden_visualizacion FOR COLUMN MICRF09 INTEGER
        NOT NULL WITH DEFAULT 0,
    usuario_creacion FOR COLUMN MICRF10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN MICRF11 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN MICRF12 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN MICRF13 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN MICRF14 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN MICRF15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN MICRF16 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT MICRF_PK PRIMARY KEY (
        tipo_formulario,
        nombre_reporte,
        secuencia
    )
)
RCDFMT RMICRF;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE MICRF IS 'Generated table for MICRF.';

LABEL ON TABLE MICRF IS 'MICRF table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN MICRF
    (tipo_formulario IS 'Type Form field.');
COMMENT ON COLUMN MICRF
    (nombre_reporte IS 'Nombre Report field.');
COMMENT ON COLUMN MICRF
    (secuencia IS 'Sequence field.');
COMMENT ON COLUMN MICRF
    (descripcion IS 'Description field.');
COMMENT ON COLUMN MICRF
    (valor_texto IS 'Value Text field.');
COMMENT ON COLUMN MICRF
    (valor_numerico IS 'Value Numeric field.');
COMMENT ON COLUMN MICRF
    (vigencia_desde IS 'Effective Start field.');
COMMENT ON COLUMN MICRF
    (vigencia_hasta IS 'Effective End field.');
COMMENT ON COLUMN MICRF
    (orden_visualizacion IS 'Order Display field.');
COMMENT ON COLUMN MICRF
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN MICRF
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN MICRF
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN MICRF
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN MICRF
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN MICRF
    (created_at IS 'Created At field.');
COMMENT ON COLUMN MICRF
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN MICRF (
    tipo_formulario IS 'Type Form',
    nombre_reporte IS 'Nombre Report',
    secuencia IS 'Sequence',
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

LABEL ON COLUMN MICRF (
    tipo_formulario TEXT IS 'Type Form value for the record',
    nombre_reporte TEXT IS 'Nombre Report value for the record',
    secuencia TEXT IS 'Sequence value for the record',
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
