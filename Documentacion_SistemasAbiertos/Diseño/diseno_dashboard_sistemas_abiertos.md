# Diseño Visual Esperado - Dashboard de Conciliación (Sistemas Abiertos)

## 1. Objetivo de la Vista
Definir cómo se espera visualizar el dashboard para el requerimiento de Sistemas Abiertos, tomando como base el JSON de conciliación contable generado desde IBM i.

El diseño prioriza:
- Lectura rápida del estado general de conciliación.
- Identificación inmediata de cuentas con diferencia.
- Navegación fluida hacia detalle de cuenta y partidas conciliatorias.
- Trazabilidad de la ejecución (metadata de corrida).

## 2. Principios de Diseño
- Claridad primero: mostrar KPIs principales en primer nivel.
- Jerarquía visual: resumen global arriba, detalle abajo.
- Enfoque en excepción: destacar visualmente diferencias y severidades altas.
- Consistencia: usar patrones repetibles de tarjetas, tablas y gráficas.
- Auditabilidad: cada dato visible debe poder rastrearse a origen o cálculo.

## 3. Estructura General del Dashboard

### 3.1 Zonas principales
1. Barra superior (Header)
- Título de tablero.
- Id de ejecución.
- Fecha/hora de proceso.
- Ambiente.
- Estado general de ejecución.

2. Filtros globales
- Banco.
- Sucursal.
- Moneda.
- Periodo (año/mes/fecha corte).
- Estado de conciliación.
- Severidad de incidente.
- Búsqueda por cuenta contable.

3. KPIs (tarjetas)
- Total cuentas procesadas.
- Total conciliadas.
- Total con diferencia.
- Sumatoria diferencia neta.

4. Área de visualización analítica
- Gráfica 1: distribución por estado de conciliación.
- Gráfica 2: top cuentas con mayor diferencia.
- Gráfica 3: comparativo saldo fuente vs conciliado.
- Gráfica 4: tendencia de diferencias por fecha.

5. Tabla principal de cuentas
- Lista de cuentas con columnas clave y semáforo de estado.
- Ordenamiento por diferencia neta descendente.

6. Panel de detalle (drill-down)
- Detalle de cuenta seleccionada.
- Partidas conciliatorias.
- Incidentes asociados.
- Trazabilidad de fuentes.

## 4. Wireframe de Referencia

```text
+-----------------------------------------------------------------------------------+
| Dashboard Conciliación GLBLN                         Ejecución: 20260519_120000   |
| Ambiente: QA  Estado: FINALIZADO  Usuario: USRFIN01  Corte: 2026-05-19            |
+-----------------------------------------------------------------------------------+
| [Banco v] [Sucursal v] [Moneda v] [Periodo v] [Estado v] [Severidad v] [Buscar] |
+-----------------------------------------------------------------------------------+
| [Ctas Procesadas] [Ctas Conciliadas] [Ctas con Diferencia] [Dif. Neta Total]     |
|      150                134                      16                   19.50        |
+-----------------------------------------------------------------------------------+
| [Pie Estados]            [Top Diferencias]        [Fuente vs Conciliado]          |
|                                                                                ... |
+-----------------------------------------------------------------------------------+
| Tabla de Cuentas                                                                    |
| Cuenta     Descripción      Saldo Fuente  Saldo Conciliado  Diferencia  Estado     |
| 11010101   Caja General     125000.50     125000.00         0.50        PARCIAL    |
| 11010200   Caja Sucursal    98000.00      98000.00          0.00        CONCILIADA |
+-----------------------------------------------------------------------------------+
| Panel Detalle Cuenta: 11010101                                                    |
| Saldos | Partidas Conciliatorias | Incidentes | Trazabilidad                      |
| - Partida: DEP-884771  Monto: 500.50  Estado: PENDIENTE                           |
| - Incidente: WARN-GL-002  Severidad: BAJA                                         |
+-----------------------------------------------------------------------------------+
```

Nota: las filas de "Tabla de Cuentas" son ilustrativas; en implementación deben renderizarse dinámicamente desde `cuentas[]` del JSON.

## 5. Comportamiento Esperado por Sección

### 5.1 Header
- Debe permanecer visible al hacer scroll (sticky).
- Debe mostrar si la corrida está FINALIZADA, PARCIAL o ERROR con color distintivo.

### 5.2 Filtros
- Deben ser combinables.
- Deben impactar KPIs, gráficas y tabla en tiempo real.
- Debe existir opción de limpiar filtros.

### 5.3 Tarjetas KPI
- Click en cada tarjeta filtra automáticamente la tabla.
- Mostrar variación respecto a ejecución anterior (si existe histórico).

### 5.4 Gráficas
- Tooltips con valores exactos.
- Click en una serie/barra activa filtro contextual.
- Leyenda clara y consistente con estados del negocio.

### 5.5 Tabla de cuentas
Columnas mínimas:
- Cuenta contable.
- Descripción.
- Saldo fuente.
- Saldo conciliado.
- Diferencia neta.
- Tolerancia.
- Excede tolerancia (si/no).
- Estado conciliación.
- Severidad.
- Acción Ver detalle.

### 5.6 Panel de detalle
Tabs recomendadas:
- Resumen de cuenta.
- Partidas conciliatorias.
- Incidentes.
- Trazabilidad.

Cada tab debe permitir exportación de su información.

## 6. Estados Visuales y Semáforos
- CONCILIADA: verde.
- PARCIAL: ámbar.
- NO_CONCILIADA: rojo.
- ERROR: rojo intenso.

Severidad de incidentes:
- BAJA: azul.
- MEDIA: amarillo.
- ALTA: naranja.
- CRITICA: rojo.

## 7. Reglas UX/UI para Auditoría
- Todo monto debe mostrarse con separador de miles y 2 decimales.
- Fechas con formato ISO visible y consistente.
- Mostrar origen del dato (Directo/Derivado/Generado) en tooltip o panel auxiliar.
- Mantener historial de filtros aplicados durante sesión.

## 8. Responsive Design Esperado

### Desktop
- Dashboard completo en una vista principal con 2 a 3 columnas de widgets.

### Tablet
- Reacomodo a 2 columnas.
- Tabla con scroll horizontal controlado.

### Móvil
- KPIs apilados.
- Gráficas en carrusel vertical.
- Tabla resumida y detalle en pantalla separada.

## 9. Accesibilidad Mínima
- Contraste adecuado de colores.
- Navegación por teclado en filtros y tabla.
- Etiquetas accesibles en componentes de gráfica.
- No depender exclusivamente del color para indicar estado.

## 10. Criterios de Aceptación del Diseño Visual
- Permite detectar en menos de 10 segundos cuentas con mayor diferencia.
- Permite llegar al detalle de una cuenta en máximo 2 clics.
- Refleja correctamente los datos de controlTotales del JSON.
- Presenta claramente partidas e incidentes relacionados.
- Es legible en desktop y móvil.

## 11. Recomendación de Implementación Frontend
Puede implementarse con cualquier framework moderno (React, Angular, Vue, Blazor), manteniendo:
- Componentes reutilizables.
- Estado centralizado para filtros.
- Contrato estricto del JSON de entrada.
- Separación entre vista, lógica de negocio y acceso a datos.
