--=====================================================================
-- BLOQUE DE METADATA FUNCIONAL
--=====================================================================
-- Nombre de la Tabla:       CNOFT
-- DESCRIPCION:              Archivo Maestro de Tablas de Datos Comunes.
-- Objetivo:                 Registrar catalogos comunes del sistema para
--                           validacion, consulta y parametrizacion.
-- Tipo de Tabla:            Maestro
-- Origen de los Datos:      Parametrizacion funcional del sistema
-- Permanencia de Datos:     Permanente
-- Uso de los datos:         Consulta, validacion y configuracion
-- Restricciones:            Clave primaria por codigo de tabla e idioma

--=====================================================================
-- BLOQUE DE AUTORIA Y CONTEXTO
--=====================================================================
-- Hecho por:                Cesar Lanuza
-- Equipo:                   GitHub Workshop for IBM i
-- Fecha:                    2026-06-02
-- Proyecto:                 GitHub Workshop for IBM i
-- Program Name:             CNOFT

--=====================================================================
-- DEFINICION DE LA TABLA
--=====================================================================

CREATE OR REPLACE TABLE CNOFT
(
    codigo_tabla FOR COLUMN CODTAB VARCHAR(20) NOT NULL WITH DEFAULT '',
    idioma FOR COLUMN IDIOMA VARCHAR(20) NOT NULL WITH DEFAULT '',
    descripcion FOR COLUMN DESCRI VARCHAR(120) NOT NULL WITH DEFAULT '',
    valor_texto FOR COLUMN VALTXT VARCHAR(50) NOT NULL WITH DEFAULT '',
    valor_numerico FOR COLUMN VALNUM DECIMAL(18, 2) NOT NULL WITH DEFAULT 0,
    vigencia_desde FOR COLUMN VIGDES DATE NOT NULL WITH DEFAULT CURRENT_DATE,
    vigencia_hasta FOR COLUMN VIGHAS DATE NOT NULL WITH DEFAULT CURRENT_DATE,
    orden_visualizacion FOR COLUMN ORDVIS INTEGER NOT NULL WITH DEFAULT 0,
    usuario_creacion FOR COLUMN USRCRE VARCHAR(30) NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN USRACT VARCHAR(30) NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN VERREG INTEGER NOT NULL WITH DEFAULT 1,
    observaciones FOR COLUMN OBSERV VARCHAR(120) NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN ESTREG CHAR(1) NOT NULL WITH DEFAULT 'A',
    created_at FOR COLUMN CREATS TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN UPDATS TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT CNOFT_PK PRIMARY KEY (codigo_tabla, idioma)
)
RCDFMT RCNOFT;

--=====================================================================
-- METADATA DE LA TABLA
--=====================================================================

COMMENT ON TABLE CNOFT IS
    'Archivo Maestro de Tablas de Datos Comunes.';

LABEL ON TABLE CNOFT IS 'Maestro tablas comunes';

--=====================================================================
-- METADATA DE COLUMNAS
--=====================================================================

COMMENT ON COLUMN CNOFT (codigo_tabla IS 'Codigo funcional de tabla comun.');
COMMENT ON COLUMN CNOFT (idioma IS 'Idioma del registro comun.');
COMMENT ON COLUMN CNOFT (descripcion IS 'Descripcion funcional de tabla.');
COMMENT ON COLUMN CNOFT (valor_texto IS 'Valor textual de referencia.');
COMMENT ON COLUMN CNOFT (valor_numerico IS 'Valor numerico de referencia.');
COMMENT ON COLUMN CNOFT (vigencia_desde IS 'Fecha inicial de vigencia.');
COMMENT ON COLUMN CNOFT (vigencia_hasta IS 'Fecha final de vigencia.');
COMMENT ON COLUMN CNOFT (orden_visualizacion IS 'Orden de visualizacion.');
COMMENT ON COLUMN CNOFT (usuario_creacion IS 'Usuario que creo el registro.');
COMMENT ON COLUMN CNOFT (usuario_actualizacion IS 'Usuario que actualizo registro.');
COMMENT ON COLUMN CNOFT (version_registro IS 'Version de control.');
COMMENT ON COLUMN CNOFT (observaciones IS 'Observaciones funcionales.');
COMMENT ON COLUMN CNOFT (estado_registro IS 'Estado actual del registro.');
COMMENT ON COLUMN CNOFT (created_at IS 'Fecha y hora de creacion.');
COMMENT ON COLUMN CNOFT (updated_at IS 'Fecha y hora de actualizacion.');

LABEL ON COLUMN CNOFT (
    codigo_tabla IS 'Codigo Tabla',
    idioma IS 'Idioma',
    descripcion IS 'Descripcion',
    valor_texto IS 'Valor Texto',
    valor_numerico IS 'Valor Numerico',
    vigencia_desde IS 'Vigencia Desde',
    vigencia_hasta IS 'Vigencia Hasta',
    orden_visualizacion IS 'Orden Visual',
    usuario_creacion IS 'Usuario Creacion',
    usuario_actualizacion IS 'Usuario Actualiza',
    version_registro IS 'Version Registro',
    observaciones IS 'Observaciones',
    estado_registro IS 'Estado Registro',
    created_at IS 'Fecha Creacion',
    updated_at IS 'Fecha Actualiza'
);

LABEL ON COLUMN CNOFT (
    codigo_tabla TEXT IS 'Codigo funcional de la tabla de datos comunes',
    idioma TEXT IS 'Idioma asociado al registro de datos comunes',
    descripcion TEXT IS 'Descripcion funcional de la tabla de datos comunes',
    valor_texto TEXT IS 'Valor textual de configuracion o referencia',
    valor_numerico TEXT IS 'Valor numerico de configuracion o referencia',
    vigencia_desde TEXT IS 'Fecha inicial de vigencia del registro',
    vigencia_hasta TEXT IS 'Fecha final de vigencia del registro',
    orden_visualizacion TEXT IS 'Orden sugerido para listados y pantallas',
    usuario_creacion TEXT IS 'Usuario responsable de crear el registro',
    usuario_actualizacion TEXT IS 'Usuario responsable de actualizar el registro',
    version_registro TEXT IS 'Version usada para control de cambios',
    observaciones TEXT IS 'Notas funcionales adicionales del registro',
    estado_registro TEXT IS 'Estado operativo del registro comun',
    created_at TEXT IS 'Marca de tiempo de creacion del registro',
    updated_at TEXT IS 'Marca de tiempo de actualizacion del registro'
);
