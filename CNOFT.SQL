-- =====================================================================
-- BLOQUE DE METADATA FUNCIONAL
-- =====================================================================
-- Nombre de la Tabla:       CNOFT
-- Descripción:              Archivo Maestro de Tablas de Datos Comunes.
--                           Contiene definiciones de tablas de referencia
--                           para consultas y validaciones del sistema.
-- Objetivo:                 Almacenar metadatos y valores de configuración
--                           para tablas de datos comunes, soportando múltiples
--                           idiomas y períodos de vigencia.
-- Tipo de Tabla:            Maestro
-- Origen de los Datos:      Manual (administrador del sistema)
-- Permanencia de Datos:     Permanente
-- Uso de los Datos:         Consulta, Validación, Configuración
-- Restricciones:            No aplican restricciones especiales

-- =====================================================================
-- BLOQUE DE AUTORIA Y CONTEXTO
-- =====================================================================
-- Hecho por:                Cesar Lanuza
-- Equipo:                   GitHub Workshop for IBM i
-- Fecha:                    2026-06-02
-- Proyecto:                 GitHub Workshop for IBM i
-- Versión:                  1.0
-- Estado:                   Activo

-- =====================================================================
-- DEFINICION DE LA TABLA
-- =====================================================================

CREATE OR REPLACE TABLE CNOFT
(
    codigo_tabla FOR COLUMN CODTB VARCHAR(20) NOT NULL WITH DEFAULT '',
    idioma FOR COLUMN IDIOM VARCHAR(20) NOT NULL WITH DEFAULT '',
    descripcion FOR COLUMN DESCR VARCHAR(120) NOT NULL WITH DEFAULT '',
    valor_texto FOR COLUMN VLTXT VARCHAR(50) NOT NULL WITH DEFAULT '',
    valor_numerico FOR COLUMN VLNUM DECIMAL(18, 2) NOT NULL WITH DEFAULT 0.00,
    vigencia_desde FOR COLUMN VIGDE DATE NOT NULL WITH DEFAULT CURRENT_DATE,
    vigencia_hasta FOR COLUMN VIGHA DATE NOT NULL WITH DEFAULT CURRENT_DATE,
    orden_visualizacion FOR COLUMN ORDEN INTEGER NOT NULL WITH DEFAULT 0,
    usuario_creacion FOR COLUMN USRCR VARCHAR(30) NOT NULL WITH DEFAULT 'SYSTEM',
    usuario_actualizacion FOR COLUMN USRAC VARCHAR(30) NOT NULL WITH DEFAULT 'SYSTEM',
    version_registro FOR COLUMN VEREG INTEGER NOT NULL WITH DEFAULT 1,
    observaciones FOR COLUMN OBSRV VARCHAR(120) NOT NULL WITH DEFAULT '',
    estado_registro FOR COLUMN ESTRE CHAR(1) NOT NULL WITH DEFAULT 'A',
    created_at FOR COLUMN CREAT TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN UPDAT TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT CNOFT_PK PRIMARY KEY (codigo_tabla, idioma)
)
RCDFMT RCNOFT;

-- =====================================================================
-- METADATA DE LA TABLA
-- =====================================================================

LABEL ON TABLE CNOFT IS 'Maestro de Tablas Comunes';

COMMENT ON TABLE CNOFT IS
    'Almacena definiciones y metadatos de tablas de datos comunes del
     sistema, permitiendo gestión multiidioma y períodos de vigencia.';

-- =====================================================================
-- METADATA DE COLUMNAS
-- =====================================================================

LABEL ON COLUMN CNOFT (
    codigo_tabla IS 'Codigo Tabla',
    idioma IS 'Idioma',
    descripcion IS 'Descripcion',
    valor_texto IS 'Valor Texto',
    valor_numerico IS 'Valor Numerico',
    vigencia_desde IS 'Vigencia Desde',
    vigencia_hasta IS 'Vigencia Hasta',
    orden_visualizacion IS 'Orden Visualizacion',
    usuario_creacion IS 'Usuario Creacion',
    usuario_actualizacion IS 'Usuario Actualizacion',
    version_registro IS 'Version Registro',
    observaciones IS 'Observaciones',
    estado_registro IS 'Estado Registro',
    created_at IS 'Fecha Creacion',
    updated_at IS 'Fecha Actualizacion'
);

LABEL ON COLUMN CNOFT (
    codigo_tabla TEXT IS 'Identificador unico de la tabla de datos comunes',
    idioma TEXT IS 'Codigo del idioma para la tabla (ES, EN, etc)',
    descripcion TEXT IS 'Descripcion detallada de la tabla y su contenido',
    valor_texto TEXT IS 'Valor de texto asociado a la tabla de configuracion',
    valor_numerico TEXT IS 'Valor numerico asociado a parametros de configuracion',
    vigencia_desde TEXT IS 'Fecha desde la cual la tabla es valida y activa',
    vigencia_hasta TEXT IS 'Fecha hasta la cual la tabla mantiene vigencia',
    orden_visualizacion TEXT IS 'Orden de presentacion en interfaz y reportes',
    usuario_creacion TEXT IS 'Usuario que origino el registro en el sistema',
    usuario_actualizacion TEXT IS 'Usuario que realizo ultima modificacion del registro',
    version_registro TEXT IS 'Numero de version del registro para control de cambios',
    observaciones TEXT IS 'Notas y observaciones adicionales sobre el registro',
    estado_registro TEXT IS 'Estado del registro (A=Activo, I=Inactivo, L=Eliminado)',
    created_at TEXT IS 'Timestamp de creacion automatica del registro',
    updated_at TEXT IS 'Timestamp de ultima actualizacion automatica del registro'
);

COMMENT ON COLUMN CNOFT.codigo_tabla IS
    'Clave primaria. Identificador único de la tabla de datos comunes.
     Utilizado para búsquedas y referencias cruzadas.';

COMMENT ON COLUMN CNOFT.idioma IS
    'Clave primaria. Código de idioma soportado (ES=Español,
     EN=Inglés, etc). Define versión multiidioma del registro.';

COMMENT ON COLUMN CNOFT.descripcion IS
    'Descripción funcional de la tabla, su propósito y contenido.
     Máximo 120 caracteres.';

COMMENT ON COLUMN CNOFT.valor_texto IS
    'Valor de configuración en formato texto, hasta 50 caracteres.
     Utilizado para parámetros de sistema.';

COMMENT ON COLUMN CNOFT.valor_numerico IS
    'Valor numérico con precisión de 18 dígitos y 2 decimales.
     Para parámetros numéricos del sistema.';

COMMENT ON COLUMN CNOFT.vigencia_desde IS
    'Fecha de inicio de vigencia. El registro es válido a partir
     de esta fecha inclusive.';

COMMENT ON COLUMN CNOFT.vigencia_hasta IS
    'Fecha de fin de vigencia. El registro deja de ser válido
     después de esta fecha.';

COMMENT ON COLUMN CNOFT.orden_visualizacion IS
    'Secuencia numérica para ordenar registros en interfaz.
     Ascendente por defecto.';

COMMENT ON COLUMN CNOFT.usuario_creacion IS
    'ID del usuario que creó el registro. Auditoría de origen.
     Máximo 30 caracteres.';

COMMENT ON COLUMN CNOFT.usuario_actualizacion IS
    'ID del usuario de última actualización. Auditoría de cambios.
     Máximo 30 caracteres.';

COMMENT ON COLUMN CNOFT.version_registro IS
    'Contador de versión. Se incrementa con cada modificación.
     Control de concurrencia optimista.';

COMMENT ON COLUMN CNOFT.observaciones IS
    'Campo libre para observaciones funcionales o técnicas.
     Máximo 120 caracteres.';

COMMENT ON COLUMN CNOFT.estado_registro IS
    'Bandera de estado: A=Activo, I=Inactivo, L=Lógicamente eliminado.
     Un carácter. Por defecto A.';

COMMENT ON COLUMN CNOFT.created_at IS
    'Marca de tiempo de creación. Establece auditoría temporal.
     Generado automáticamente por el sistema.';

COMMENT ON COLUMN CNOFT.updated_at IS
    'Marca de tiempo de última modificación. Auditoría temporal.
     Actualizado automáticamente por el sistema.';
