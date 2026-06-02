--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       BUMST
-- DESCRIPCION:              Generated table for BUMST.
-- Objetivo:                 Store operational data for BUMST.
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
-- Program Name:             BUMST

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE BUMST
(
    codigo_banco FOR COLUMN BUMST01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_sucursal FOR COLUMN BUMST02 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    codigo_moneda FOR COLUMN BUMST03 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    numero_presupuesto FOR COLUMN BUMST04 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    centro_costo FOR COLUMN BUMST05 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    descripcion_cuenta FOR COLUMN BUMST06 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    naturaleza_cuenta FOR COLUMN BUMST07 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    nivel_cuenta FOR COLUMN BUMST08 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    saldo_actual FOR COLUMN BUMST09 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    fecha_proceso_sistema FOR COLUMN BUMST10 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    observaciones FOR COLUMN BUMST11 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN BUMST12 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN BUMST13 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN BUMST14 INTEGER
        NOT NULL WITH DEFAULT 0,
    estado_registro FOR COLUMN BUMST15 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN BUMST16 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN BUMST17 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT BUMST_PK PRIMARY KEY (
        codigo_banco,
        codigo_sucursal,
        codigo_moneda,
        numero_presupuesto,
        centro_costo
    )
)
RCDFMT RBUMST;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE BUMST IS 'Generated table for BUMST.';

LABEL ON TABLE BUMST IS 'BUMST table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN BUMST
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN BUMST
    (codigo_sucursal IS 'Code Branch field.');
COMMENT ON COLUMN BUMST
    (codigo_moneda IS 'Code Currency field.');
COMMENT ON COLUMN BUMST
    (numero_presupuesto IS 'Number Presupuesto field.');
COMMENT ON COLUMN BUMST
    (centro_costo IS 'Center Cost field.');
COMMENT ON COLUMN BUMST
    (descripcion_cuenta IS 'Description Account field.');
COMMENT ON COLUMN BUMST
    (naturaleza_cuenta IS 'Naturaleza Account field.');
COMMENT ON COLUMN BUMST
    (nivel_cuenta IS 'Level Account field.');
COMMENT ON COLUMN BUMST
    (saldo_actual IS 'Balance Actual field.');
COMMENT ON COLUMN BUMST
    (fecha_proceso_sistema IS 'Date Process Sistema field.');
COMMENT ON COLUMN BUMST
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN BUMST
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN BUMST
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN BUMST
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN BUMST
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN BUMST
    (created_at IS 'Created At field.');
COMMENT ON COLUMN BUMST
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN BUMST (
    codigo_banco IS 'Code Bank',
    codigo_sucursal IS 'Code Branch',
    codigo_moneda IS 'Code Currency',
    numero_presupuesto IS 'Number Presupuesto',
    centro_costo IS 'Center Cost',
    descripcion_cuenta IS 'Description Account',
    naturaleza_cuenta IS 'Naturaleza Account',
    nivel_cuenta IS 'Level Account',
    saldo_actual IS 'Balance Actual',
    fecha_proceso_sistema IS 'Date Process Sistema',
    observaciones IS 'Notes',
    usuario_creacion IS 'User Creation',
    usuario_actualizacion IS 'User Update',
    version_registro IS 'Version Record',
    estado_registro IS 'Status Record',
    created_at IS 'Created At',
    updated_at IS 'Updated At'
);

--=====================================================================
-- COLUMN TEXT LABELS
--=====================================================================

LABEL ON COLUMN BUMST (
    codigo_banco TEXT IS 'Code Bank value for the record',
    codigo_sucursal TEXT IS 'Code Branch value for the record',
    codigo_moneda TEXT IS 'Code Currency value for the record',
    numero_presupuesto TEXT IS 'Number Presupuesto value for the record',
    centro_costo TEXT IS 'Center Cost value for the record',
    descripcion_cuenta TEXT IS 'Description Account value for the record',
    naturaleza_cuenta TEXT IS 'Naturaleza Account value for the record',
    nivel_cuenta TEXT IS 'Level Account value for the record',
    saldo_actual TEXT IS 'Balance Actual value for the record',
    fecha_proceso_sistema TEXT IS 'Date Process Sistema value for the record',
    observaciones TEXT IS 'Notes value for the record',
    usuario_creacion TEXT IS 'User Creation value for the record',
    usuario_actualizacion TEXT IS 'User Update value for the record',
    version_registro TEXT IS 'Version Record value for the record',
    estado_registro TEXT IS 'Status Record value for the record',
    created_at TEXT IS 'Created At value for the record',
    updated_at TEXT IS 'Updated At value for the record'
);
