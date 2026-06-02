--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       HEAD
-- DESCRIPCION:              Generated table for HEAD.
-- Objetivo:                 Store operational data for HEAD.
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
-- Program Name:             HEAD

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE HEAD
(
    nombre_printer_file FOR COLUMN HEAD01 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    secuencia FOR COLUMN HEAD02 INTEGER
        NOT NULL WITH DEFAULT 0,
    descripcion FOR COLUMN HEAD03 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    valor_texto FOR COLUMN HEAD04 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    valor_numerico FOR COLUMN HEAD05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    vigencia_desde FOR COLUMN HEAD06 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    vigencia_hasta FOR COLUMN HEAD07 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    orden_visualizacion FOR COLUMN HEAD08 INTEGER
        NOT NULL WITH DEFAULT 0,
    usuario_creacion FOR COLUMN HEAD09 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN HEAD10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN HEAD11 INTEGER
        NOT NULL WITH DEFAULT 0,
    observaciones FOR COLUMN HEAD12 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN HEAD13 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN HEAD14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN HEAD15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT HEAD_PK PRIMARY KEY (
        nombre_printer_file,
        secuencia
    )
)
RCDFMT RHEAD;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE HEAD IS 'Generated table for HEAD.';

LABEL ON TABLE HEAD IS 'HEAD table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN HEAD
    (nombre_printer_file IS 'Nombre Printer File field.');
COMMENT ON COLUMN HEAD
    (secuencia IS 'Sequence field.');
COMMENT ON COLUMN HEAD
    (descripcion IS 'Description field.');
COMMENT ON COLUMN HEAD
    (valor_texto IS 'Value Text field.');
COMMENT ON COLUMN HEAD
    (valor_numerico IS 'Value Numeric field.');
COMMENT ON COLUMN HEAD
    (vigencia_desde IS 'Effective Start field.');
COMMENT ON COLUMN HEAD
    (vigencia_hasta IS 'Effective End field.');
COMMENT ON COLUMN HEAD
    (orden_visualizacion IS 'Order Display field.');
COMMENT ON COLUMN HEAD
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN HEAD
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN HEAD
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN HEAD
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN HEAD
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN HEAD
    (created_at IS 'Created At field.');
COMMENT ON COLUMN HEAD
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN HEAD (
    nombre_printer_file IS 'Nombre Printer File',
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

LABEL ON COLUMN HEAD (
    nombre_printer_file TEXT IS 'Nombre Printer File value for the record',
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
