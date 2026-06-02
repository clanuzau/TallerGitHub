--=====================================================================
-- FUNCTIONAL METADATA BLOCK
--=====================================================================
-- Nombre de la Tabla:       RCOLL
-- DESCRIPCION:              Generated table for RCOLL.
-- Objetivo:                 Store operational data for RCOLL.
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
-- Program Name:             RCOLL

--=====================================================================
-- TABLE DEFINITION
--=====================================================================

CREATE OR REPLACE TABLE RCOLL
(
    codigo_banco FOR COLUMN RCOLL01 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    cuenta_a_garantizar FOR COLUMN RCOLL02 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    cuenta_que_garantiza FOR COLUMN RCOLL03 VARCHAR(50)
        NOT NULL WITH DEFAULT '',
    tipo_garantia FOR COLUMN RCOLL04 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    valor_garantia FOR COLUMN RCOLL05 DECIMAL(18, 2)
        NOT NULL WITH DEFAULT 0,
    fecha_avaluo FOR COLUMN RCOLL06 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    fecha_vencimiento FOR COLUMN RCOLL07 DATE
        NOT NULL WITH DEFAULT CURRENT_DATE,
    estado_garantia FOR COLUMN RCOLL08 VARCHAR(20)
        NOT NULL WITH DEFAULT '',
    observaciones FOR COLUMN RCOLL09 VARCHAR(120)
        NOT NULL WITH DEFAULT '',
    usuario_creacion FOR COLUMN RCOLL10 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    usuario_actualizacion FOR COLUMN RCOLL11 VARCHAR(30)
        NOT NULL WITH DEFAULT '',
    version_registro FOR COLUMN RCOLL12 INTEGER
        NOT NULL WITH DEFAULT 0,
    estado_registro FOR COLUMN RCOLL13 CHAR(1)
        NOT NULL WITH DEFAULT '',
    created_at FOR COLUMN RCOLL14 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    updated_at FOR COLUMN RCOLL15 TIMESTAMP
        NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT RCOLL_PK PRIMARY KEY (
        codigo_banco,
        cuenta_a_garantizar,
        cuenta_que_garantiza
    )
)
RCDFMT RRCOLL;

--=====================================================================
-- TABLE METADATA
--=====================================================================

COMMENT ON TABLE RCOLL IS 'Generated table for RCOLL.';

LABEL ON TABLE RCOLL IS 'RCOLL table';

--=====================================================================
-- COLUMN COMMENTS
--=====================================================================

COMMENT ON COLUMN RCOLL
    (codigo_banco IS 'Code Bank field.');
COMMENT ON COLUMN RCOLL
    (cuenta_a_garantizar IS 'Account A Garantizar field.');
COMMENT ON COLUMN RCOLL
    (cuenta_que_garantiza IS 'Account Que Garantiza field.');
COMMENT ON COLUMN RCOLL
    (tipo_garantia IS 'Type Collateral field.');
COMMENT ON COLUMN RCOLL
    (valor_garantia IS 'Value Collateral field.');
COMMENT ON COLUMN RCOLL
    (fecha_avaluo IS 'Date Avaluo field.');
COMMENT ON COLUMN RCOLL
    (fecha_vencimiento IS 'Date Due field.');
COMMENT ON COLUMN RCOLL
    (estado_garantia IS 'Status Collateral field.');
COMMENT ON COLUMN RCOLL
    (observaciones IS 'Notes field.');
COMMENT ON COLUMN RCOLL
    (usuario_creacion IS 'User Creation field.');
COMMENT ON COLUMN RCOLL
    (usuario_actualizacion IS 'User Update field.');
COMMENT ON COLUMN RCOLL
    (version_registro IS 'Version Record field.');
COMMENT ON COLUMN RCOLL
    (estado_registro IS 'Status Record field.');
COMMENT ON COLUMN RCOLL
    (created_at IS 'Created At field.');
COMMENT ON COLUMN RCOLL
    (updated_at IS 'Updated At field.');

--=====================================================================
-- COLUMN SHORT LABELS
--=====================================================================

LABEL ON COLUMN RCOLL (
    codigo_banco IS 'Code Bank',
    cuenta_a_garantizar IS 'Account A Garantizar',
    cuenta_que_garantiza IS 'Account Que Garantiza',
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

LABEL ON COLUMN RCOLL (
    codigo_banco TEXT IS 'Code Bank value for the record',
    cuenta_a_garantizar TEXT IS 'Account A Garantizar value for the record',
    cuenta_que_garantiza TEXT IS 'Account Que Garantiza value for the record',
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
