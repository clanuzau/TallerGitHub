-- =====================================================================
-- Author:          Cesar Lanuza
-- Project:         GitHub Workshop for IBM i
-- Date:            2026-06-02
-- Program Name:    CNOFT
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
)
RCDFMT RCNOFT;

LABEL ON TABLE CNOFT IS 'Archivo Maestro de Tablas de Datos Comunes';

LABEL ON COLUMN CNOFT (
codigo_tabla IS 'Código de la Tabla';
idioma IS 'Idioma';
descripcion IS 'Descripción';
valor_texto IS 'Valor Texto';
valor_numerico IS 'Valor Numérico';
vigencia_desde IS 'Vigencia Desde';
vigencia_hasta IS 'Vigencia Hasta';
orden_visualizacion IS 'Orden Visualización';
usuario_creacion IS 'Usuario Creación';
usuario_actualizacion IS 'Usuario Actualización';
version_registro IS 'Versión Registro';
Observaciones IS 'Observaciones';
estado_registro IS 'Estado Registro';
created_at IS 'Fecha Creación';
updated_at IS 'Fecha Actualización');

LABEL ON COLUMN CNOFT(
codigo_tabla TEXT IS 'Identificador único de la tabla de datos comunes';
idioma TEXT IS 'Código del idioma para la tabla (ES, EN, etc)';
descripcion TEXT IS 'Descripción detallada de la tabla';
valor_texto TEXT IS 'Valor de texto asociado a la tabla';
valor_numerico TEXT IS 'Valor numérico asociado a la tabla';
vigencia_desde TEXT IS 'Fecha desde la cual la tabla es válida';
vigencia_hasta TEXT IS 'Fecha hasta la cual la tabla es válida';
orden_visualizacion TEXT IS 'Orden de visualización en interfaz';
usuario_creacion TEXT IS 'Usuario que creó el registro';
usuario_actualizacion TEXT IS 'Usuario que actualizó el registro';
version_registro TEXT IS 'Número de versión del registro';
observaciones TEXT IS 'Observaciones adicionales sobre el registro';
estado_registro TEXT IS 'Estado del registro (A=Activo, I=Inactivo)';
created_at TEXT IS 'Timestamp de creación del registro';
updated_at TEXT IS 'Timestamp de última actualización');

COMMENT ON COLUMN codigo_tabla IS 'Identificador único de la tabla de datos comunes';
COMMENT ON COLUMN idioma IS 'Código del idioma para la tabla (ES, EN, etc)';
COMMENT ON COLUMN descripcion IS 'Descripción detallada de la tabla';
COMMENT ON COLUMN valor_texto IS 'Valor de texto asociado a la tabla';
COMMENT ON COLUMN valor_numerico IS 'Valor numérico asociado a la tabla';
COMMENT ON COLUMN vigencia_desde IS 'Fecha desde la cual la tabla es válida';
COMMENT ON COLUMN vigencia_hasta IS 'Fecha hasta la cual la tabla es válida';
COMMENT ON COLUMN orden_visualizacion IS 'Orden de visualización en interfaz';
COMMENT ON COLUMN usuario_creacion IS 'Usuario que creó el registro';
COMMENT ON COLUMN usuario_actualizacion IS 'Usuario que actualizó el registro';
COMMENT ON COLUMN version_registro IS 'Número de versión del registro';
COMMENT ON COLUMN observaciones IS 'Observaciones adicionales sobre el registro';
COMMENT ON COLUMN estado_registro IS 'Estado del registro (A=Activo, I=Inactivo)';
COMMENT ON COLUMN created_at IS 'Timestamp de creación del registro';
COMMENT ON COLUMN updated_at IS 'Timestamp de última actualización';
COMMENT ON COLUMN CNOFT.usuario_actualizacion IS 'Usuario que actualizó el registro';
COMMENT ON COLUMN CNOFT.version_registro IS 'Número de versión del registro';
COMMENT ON COLUMN CNOFT.observaciones IS 'Observaciones adicionales sobre el registro';
COMMENT ON COLUMN CNOFT.estado_registro IS 'Estado del registro (A=Activo, I=Inactivo)';
COMMENT ON COLUMN CNOFT.created_at IS 'Timestamp de creación del registro';
COMMENT ON COLUMN CNOFT.updated_at IS 'Timestamp de última actualización';
