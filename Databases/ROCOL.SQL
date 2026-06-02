--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       ROCOL
-- DESCRIPCION:              Generated table for ROCOL.
-- Objetivo:                 Store operational data for ROCOL.
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
-- Program Name:             ROCOL

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE ROCOL
(
    codigo_banco FOR COLUMN ROCOL01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    id_cliente FOR COLUMN ROCOL02 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    numero_garantia FOR COLUMN ROCOL03 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    tipo_garantia FOR COLUMN ROCOL04 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    valor_garantia FOR COLUMN ROCOL05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    fecha_avaluo FOR COLUMN ROCOL06 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN ROCOL07 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    estado_garantia FOR COLUMN ROCOL08 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    observaciones FOR COLUMN ROCOL09 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN ROCOL10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN ROCOL11 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN ROCOL12 INTEGER
        NOT NULL WITH DEFAULT 0,
    estado_registro FOR COLUMN ROCOL13 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN ROCOL14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN ROCOL15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT ROCOL_PK PRIMARY KEY (
        codigo_banco,
        id_cliente,
        numero_garantia
    )
)
RCDFMT RROCOL;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE ROCOL IS 'Generated table for ROCOL.';

LABEL ON TABLE ROCOL IS 'ROCOL table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN ROCOL
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN ROCOL
    (id_cliente IS 'Id Customer field.');
COMMENT ON COLUMN ROCOL
    (numero_garantia IS 'Number Collateral field.');
COMMENT ON COLUMN ROCOL
    (tipo_garantia IS 'Type Collateral field.');
COMMENT ON COLUMN ROCOL
    (valor_garantia IS 'Value Collateral field.');
COMMENT ON COLUMN ROCOL
    (fecha_avaluo IS 'Date Avaluo field.');
COMMENT ON COLUMN ROCOL
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN ROCOL
    (estado_garantia IS 'Status Collateral field.');
COMMENT ON COLUMN ROCOL
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN ROCOL
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN ROCOL
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN ROCOL
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN ROCOL
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN ROCOL
    (created_at IS 'Created At field.');
COMMENT ON COLUMN ROCOL
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN ROCOL (
    codigo_banco IS 'Code Bank',
    id_cliente IS 'Id Customer',
    numero_garantia IS 'Number Collateral',
    tipo_garantia IS 'Type Collateral',
    valor_garantia IS 'Value Collateral',
    fecha_avaluo IS 'Date Avaluo',
    fecha_vencimiento IS 'Date Due',
    estado_garantia IS 'Status Collateral',
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

LABEL ON COLUMN ROCOL (
    codigo_banco TEXT IS 'Code Bank value for the record',
    id_cliente TEXT IS 'Id Customer value for the record',
    numero_garantia TEXT IS 'Number Collateral value for the record',
    tipo_garantia TEXT IS 'Type Collateral value for the record',
    valor_garantia TEXT IS 'Value Collateral value for the record',
    fecha_avaluo TEXT IS 'Date Avaluo value for the record',
    fecha_vencimiento TEXT IS 'Date Due value for the record',
    estado_garantia TEXT IS 'Status Collateral value for the record',
    observaciones TEXT IS 'Notes value for the record',
    usuario_creacion TEXT IS 'User Creation value for the record',
    usuario_actualizacion TEXT IS 'User Update value for the record',
    version_registro TEXT IS 'Version Record value for the record',
    estado_registro TEXT IS 'Status Record value for the record',
    created_at TEXT IS 'Created At value for the record',
    updated_at TEXT IS 'Updated At value for the record'
);
