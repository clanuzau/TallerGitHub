--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       CNOFT
-- DESCRIPCION:              Common Data Tables Master File.
-- Objetivo:                 Store common catalog definitions for
--                           validation, lookup, and configuration.
-- Tipo de Tabla:            Master
-- Origen de los Datos:      Functional system configuration
-- Permanencia de Datos:     Permanent
-- Uso de los datos:         Lookup, validation, and configuration
-- Restricciones:            Primary key by table code and language

--=====================================================================
-- AUTHORSHIP AND CONTEXT BLOCK
--=====================================================================
-- Hecho por:                Cesar Lanuza
-- Equipo:                   GitHub Workshop for IBM i
-- Fecha:                    2026-06-02
-- Proyecto:                 GitHub Workshop for IBM i
-- Program Name:             CNOFT

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE CNOFT
(
    codigo_tabla FOR COLUMN CODTAB VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    idioma FOR COLUMN IDIOMC VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    descripcion FOR COLUMN DESCRI VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    valor_texto FOR COLUMN VALTXT VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    valor_numerico FOR COLUMN VALNUM DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    vigencia_desde FOR COLUMN VIGDES DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    vigencia_hasta FOR COLUMN VIGHAS DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    orden_visualizacion FOR COLUMN ORDVIS INTEGER
        NOT NULL WITH DEFAULT 0,
    usuario_creacion FOR COLUMN USRCRE VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN USRACT VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN VERREG INTEGER
        NOT NULL WITH DEFAULT 1,
    observaciones FOR COLUMN OBSERV VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN ESTREG CHAR(1)
        NOT NULL WITH DEFAULT 'A',
    created_at FOR COLUMN CREATS TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN UPDATS TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT CNOFT_PK PRIMARY KEY (codigo_tabla, idioma)
)
RCDFMT RCNOFT;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE CNOFT IS 'Common Data Tables Master File.';

LABEL ON TABLE CNOFT IS 'Common data tables';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN CNOFT
    (codigo_tabla IS 'Common table functional code.');
COMMENT ON COLUMN CNOFT
    (idioma IS 'Language code for the record.');
COMMENT ON COLUMN CNOFT
    (descripcion IS 'Functional table description.');
COMMENT ON COLUMN CNOFT
    (valor_texto IS 'Reference text value.');
COMMENT ON COLUMN CNOFT
    (valor_numerico IS 'Reference numeric value.');
COMMENT ON COLUMN CNOFT
    (vigencia_desde IS 'Effective start date.');
COMMENT ON COLUMN CNOFT
    (vigencia_hasta IS 'Effective end date.');
COMMENT ON COLUMN CNOFT
    (orden_visualizacion IS 'Display sequence number.');
COMMENT ON COLUMN CNOFT
    (usuario_creacion IS 'User that created record.');
COMMENT ON COLUMN CNOFT
    (usuario_actualizacion IS 'User that updated record.');
COMMENT ON COLUMN CNOFT
    (version_registro IS 'Record control version.');
COMMENT ON COLUMN CNOFT
    (observaciones IS 'Functional notes.');
COMMENT ON COLUMN CNOFT
    (estado_registro IS 'Current record status.');
COMMENT ON COLUMN CNOFT
    (created_at IS 'Record creation timestamp.');
COMMENT ON COLUMN CNOFT
    (updated_at IS 'Record update timestamp.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN CNOFT (
    codigo_tabla IS 'Table Code',
    idioma IS 'Language',
    descripcion IS 'Description',
    valor_texto IS 'Text Value',
    valor_numerico IS 'Numeric Value',
    vigencia_desde IS 'Start Date',
    vigencia_hasta IS 'End Date',
    orden_visualizacion IS 'Display Order',
    usuario_creacion IS 'Created By',
    usuario_actualizacion IS 'Updated By',
    version_registro IS 'Version',
    observaciones IS 'Notes',
    estado_registro IS 'Record Status',
    created_at IS 'Created At',
    updated_at IS 'Updated At'
);

--=====================================================================
-- COLUMN TEXT LABELS
--=====================================================================

LABEL ON COLUMN CNOFT (
    codigo_tabla TEXT IS 'Common data table functional code',
    idioma TEXT IS 'Language code assigned to the common record',
    descripcion TEXT IS 'Functional description for this table',
    valor_texto TEXT IS 'Text value used by the common table',
    valor_numerico TEXT IS 'Numeric value used by the common table',
    vigencia_desde TEXT IS 'Date when the record starts to apply',
    vigencia_hasta TEXT IS 'Date when the record stops applying',
    orden_visualizacion TEXT IS 'Display order used in lists and screens',
    usuario_creacion TEXT IS 'User responsible for record creation',
    usuario_actualizacion TEXT IS 'User responsible for record updates',
    version_registro TEXT IS 'Version number used for change control',
    observaciones TEXT IS 'Additional functional notes for the record',
    estado_registro TEXT IS 'Operational status of the common record',
    created_at TEXT IS 'Timestamp when the record was created',
    updated_at TEXT IS 'Timestamp when the record was last updated'
);
