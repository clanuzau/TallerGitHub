-- =====================================================================
-- Author:          Cesar Lanuza
-- Project:         GitHub Workshop for IBM i
-- Date:            2026-06-01
-- Program Name:    CNOFT
-- Description:     Archivo Maestro de Tablas de Datos Comunes
--                  Common Data Tables Master File
-- =====================================================================
-- SQL Table Creation for IBM i V7R5M0
-- =====================================================================

CREATE TABLE CNOFT (
    codigo_tabla VARCHAR(20) NOT NULL WITH DEFAULT '',
    idioma VARCHAR(20) NOT NULL WITH DEFAULT '',
    descripcion VARCHAR(120) NOT NULL WITH DEFAULT '',
    valor_texto VARCHAR(50) NOT NULL WITH DEFAULT '',
    valor_numerico DECIMAL(18, 2) NOT NULL WITH DEFAULT 0.00,
    vigencia_desde DATE NOT NULL WITH DEFAULT CURRENT_DATE,
    vigencia_hasta DATE NOT NULL WITH DEFAULT CURRENT_DATE,
    orden_visualizacion INTEGER NOT NULL WITH DEFAULT 0,
    usuario_creacion VARCHAR(30) NOT NULL WITH DEFAULT 'SYSTEM',
    usuario_actualizacion VARCHAR(30) NOT NULL WITH DEFAULT 'SYSTEM',
    version_registro INTEGER NOT NULL WITH DEFAULT 1,
    observaciones VARCHAR(120) NOT NULL WITH DEFAULT '',
    estado_registro CHAR(1) NOT NULL WITH DEFAULT 'A',
    created_at TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (codigo_tabla, idioma)
) RCDFMT RCNOFT;

-- Table Label
LABEL ON TABLE CNOFT IS 'Archivo Maestro de Tablas de Datos Comunes';

-- Column Labels
LABEL ON COLUMN CNOFT.codigo_tabla IS 'Código de la Tabla';
LABEL ON COLUMN CNOFT.idioma IS 'Idioma';
LABEL ON COLUMN CNOFT.descripcion IS 'Descripción';
LABEL ON COLUMN CNOFT.valor_texto IS 'Valor Texto';
LABEL ON COLUMN CNOFT.valor_numerico IS 'Valor Numérico';
LABEL ON COLUMN CNOFT.vigencia_desde IS 'Vigencia Desde';
LABEL ON COLUMN CNOFT.vigencia_hasta IS 'Vigencia Hasta';
LABEL ON COLUMN CNOFT.orden_visualizacion IS 'Orden Visualización';
LABEL ON COLUMN CNOFT.usuario_creacion IS 'Usuario Creación';
LABEL ON COLUMN CNOFT.usuario_actualizacion IS 'Usuario Actualización';
LABEL ON COLUMN CNOFT.version_registro IS 'Versión Registro';
LABEL ON COLUMN CNOFT.observaciones IS 'Observaciones';
LABEL ON COLUMN CNOFT.estado_registro IS 'Estado Registro';
LABEL ON COLUMN CNOFT.created_at IS 'Fecha Creación';
LABEL ON COLUMN CNOFT.updated_at IS 'Fecha Actualización';

-- Column Text Labels (Descriptions)
LABEL ON COLUMN CNOFT.codigo_tabla TEXT IS 'Identificador único de la tabla de datos comunes';
LABEL ON COLUMN CNOFT.idioma TEXT IS 'Código del idioma para la tabla (ES, EN, etc)';
LABEL ON COLUMN CNOFT.descripcion TEXT IS 'Descripción detallada de la tabla';
LABEL ON COLUMN CNOFT.valor_texto TEXT IS 'Valor de texto asociado a la tabla';
LABEL ON COLUMN CNOFT.valor_numerico TEXT IS 'Valor numérico asociado a la tabla';
LABEL ON COLUMN CNOFT.vigencia_desde TEXT IS 'Fecha desde la cual la tabla es válida';
LABEL ON COLUMN CNOFT.vigencia_hasta TEXT IS 'Fecha hasta la cual la tabla es válida';
LABEL ON COLUMN CNOFT.orden_visualizacion TEXT IS 'Orden de visualización en interfaz';
LABEL ON COLUMN CNOFT.usuario_creacion TEXT IS 'Usuario que creó el registro';
LABEL ON COLUMN CNOFT.usuario_actualizacion TEXT IS 'Usuario que actualizó el registro';
LABEL ON COLUMN CNOFT.version_registro TEXT IS 'Número de versión del registro';
LABEL ON COLUMN CNOFT.observaciones TEXT IS 'Observaciones adicionales sobre el registro';
LABEL ON COLUMN CNOFT.estado_registro TEXT IS 'Estado del registro (A=Activo, I=Inactivo)';
LABEL ON COLUMN CNOFT.created_at TEXT IS 'Timestamp de creación del registro';
LABEL ON COLUMN CNOFT.updated_at TEXT IS 'Timestamp de última actualización';

-- Comment on Columns
COMMENT ON COLUMN CNOFT.codigo_tabla IS 'Identificador único de la tabla de datos comunes';
COMMENT ON COLUMN CNOFT.idioma IS 'Código del idioma para la tabla (ES, EN, etc)';
COMMENT ON COLUMN CNOFT.descripcion IS 'Descripción detallada de la tabla';
COMMENT ON COLUMN CNOFT.valor_texto IS 'Valor de texto asociado a la tabla';
COMMENT ON COLUMN CNOFT.valor_numerico IS 'Valor numérico asociado a la tabla';
COMMENT ON COLUMN CNOFT.vigencia_desde IS 'Fecha desde la cual la tabla es válida';
COMMENT ON COLUMN CNOFT.vigencia_hasta IS 'Fecha hasta la cual la tabla es válida';
COMMENT ON COLUMN CNOFT.orden_visualizacion IS 'Orden de visualización en interfaz';
COMMENT ON COLUMN CNOFT.usuario_creacion IS 'Usuario que creó el registro';
COMMENT ON COLUMN CNOFT.usuario_actualizacion IS 'Usuario que actualizó el registro';
COMMENT ON COLUMN CNOFT.version_registro IS 'Número de versión del registro';
COMMENT ON COLUMN CNOFT.observaciones IS 'Observaciones adicionales sobre el registro';
COMMENT ON COLUMN CNOFT.estado_registro IS 'Estado del registro (A=Activo, I=Inactivo)';
COMMENT ON COLUMN CNOFT.created_at IS 'Timestamp de creación del registro';
COMMENT ON COLUMN CNOFT.updated_at IS 'Timestamp de última actualización';

-- Create index for efficient queries
CREATE INDEX IDX_CNOFT_CREATED_AT ON CNOFT (created_at);

COMMIT;
