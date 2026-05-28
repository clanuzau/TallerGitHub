# Reglas de Revision para Agente - Sistemas Abiertos

## 1. Objetivo
Definir las reglas obligatorias para que un agente (o revisor automatizado) evalúe el cumplimiento técnico del desarrollo en Sistemas Abiertos, tomando como base la sección 7 de [Documentacion_SistemasAbiertos/Requerimientos/requerimientos_sistemas_abiertos.md](Documentacion_SistemasAbiertos/Requerimientos/requerimientos_sistemas_abiertos.md).

El resultado de la revisión debe ser auditable, trazable y accionable para aprobar o rechazar entregas.

## 2. Alcance de la Revision
Aplica a:
- Backend.
- Frontend.
- Pruebas.
- Configuración de CI/CD.
- Documentación técnica.

Aplica en:
- Pull Requests.
- Revisiones de rama de integración.
- Quality Gate previo a despliegue.

## 3. Severidades y Decision

### 3.1 Niveles de severidad
- Critica: incumplimiento que compromete seguridad, confiabilidad, trazabilidad o arquitectura base.
- Alta: incumplimiento importante de estándar técnico o de calidad que bloquea aprobación.
- Media: desviación relevante, no bloqueante inmediata, pero requiere plan de corrección.
- Baja: mejora recomendada sin bloqueo.

### 3.2 Regla de decisión
- FAIL: existe al menos 1 hallazgo Critica o Alta.
- PASS CON OBSERVACIONES: no hay Criticas/Altas, pero sí Medias/Bajas.
- PASS: sin hallazgos o solo observaciones informativas.

## 4. Flujo de Revision del Agente
1. Identificar alcance del cambio (módulos, lenguaje, componentes impactados).
2. Ejecutar validaciones automáticas (lint, test, cobertura, análisis estático, contratos JSON/API).
3. Evaluar cumplimiento de estándares 7.1 a 7.7.
4. Emitir reporte estructurado con evidencias y severidad.
5. Determinar estado final (`PASS`, `PASS CON OBSERVACIONES`, `FAIL`).

## 5. Reglas por Estándar (Seccion 7)

### 5.1 Revisión de Principios de Diseño (7.1)

#### 5.1.1 SOLID
Validar:
- SRP: clases/componentes con una responsabilidad clara.
- OCP: extensiones sin modificar comportamiento base de forma riesgosa.
- LSP: implementaciones sustituyen contratos sin romper comportamiento.
- ISP: interfaces enfocadas, sin métodos innecesarios.
- DIP: dependencias orientadas a abstracciones.

Incumplimientos detectables:
- Clases/servicios monolíticos con múltiples responsabilidades.
- Dependencias directas a infraestructura desde dominio.
- Interfaces "Dios" con operaciones no relacionadas.

Severidad sugerida:
- Critica: violaciones que rompen arquitectura o generan alto acoplamiento transversal.
- Alta: violaciones claras en módulos core de negocio.
- Media: violaciones localizadas en módulos no críticos.

#### 5.1.2 DRY
Validar:
- No duplicación sustancial de lógica de negocio.
- Reutilización de componentes/utilidades compartidas.

Incumplimientos detectables:
- Bloques de validación o cálculo repetidos en múltiples archivos.
- Mapeos/manuales repetidos sin estrategia común.

Severidad sugerida:
- Alta: duplicación en reglas críticas de conciliación.
- Media: duplicación parcial en código periférico.

#### 5.1.3 KISS
Validar:
- Soluciones simples y mantenibles para el problema actual.
- Ausencia de complejidad accidental.

Incumplimientos detectables:
- Capas o patrones innecesarios para casos triviales.
- Algoritmos complejos sin justificación funcional.

Severidad sugerida:
- Media: sobreingeniería que afecta mantenibilidad.
- Baja: complejidad menor con impacto acotado.

#### 5.1.4 YAGNI
Validar:
- No incluir funcionalidades no requeridas por alcance aprobado.
- Evitar endpoints, flags o módulos sin uso real.

Incumplimientos detectables:
- Features "futuras" sin requerimiento ni uso.
- Configuraciones no utilizadas en runtime ni tests.

Severidad sugerida:
- Media: introduce deuda técnica evitable.
- Baja: residuos menores sin impacto inmediato.

#### 5.1.5 Separación de responsabilidades por capa
Validar:
- UI/controladores no contienen lógica de negocio.
- Dominio no depende de framework UI/web.
- Infraestructura encapsulada en adaptadores.

Incumplimientos detectables:
- Controladores con cálculos de conciliación.
- Dominio accediendo directamente a SDKs externos.

Severidad sugerida:
- Alta: mezcla directa de capas en flujos de negocio.
- Media: mezcla parcial en casos no críticos.

### 5.2 Revisión de Calidad de Código (7.2)
Validar:
- Convenciones de estilo por lenguaje aplicadas.
- Linting y formateo automático activos.
- PR con revisión de código registrada.
- Sin mezcla de negocio en UI/controladores.

Evidencia mínima:
- Configuración de linter/formateador en repositorio.
- Salida de pipeline con lint en verde.
- Evidencia de review de PR (aprobaciones/comentarios resueltos).

Severidad sugerida:
- Alta: linting inexistente o roto; lógica de negocio en controlador.
- Media: desviaciones de estilo recurrentes sin bloqueo de pipeline.

### 5.3 Revisión de Arquitectura (7.3)
Validar:
- Arquitectura Clean o Hexagonal aplicada de forma consistente.
- Dominio independiente del framework.
- DTOs usados en contratos de entrada/salida.
- Adaptadores para IFS/API/DB u otras fuentes externas.

Evidencia mínima:
- Estructura de carpetas/capas coherente.
- Dependencias dirigidas hacia adentro (dominio estable).
- Contratos DTO explícitos en interfaces públicas.

Incumplimientos clave:
- Dominio importando librerías de infraestructura/web.
- Entidades de dominio expuestas directamente en API sin DTO.
- Integración externa acoplada al caso de uso sin adaptador.

Severidad sugerida:
- Critica: ruptura estructural de arquitectura objetivo.
- Alta: múltiples violaciones en rutas críticas.

### 5.4 Revisión de Pruebas (7.4)
Validar:
- Unit tests para reglas de conciliación y transformación JSON.
- Integration tests para flujos API/UI relevantes.
- Contract tests para esquema JSON esperado.
- Cobertura de lógica de negocio >= 80% (recomendado como umbral de aprobación del taller).

Evidencia mínima:
- Reporte de cobertura.
- Reporte de ejecución de tests en CI.
- Casos de prueba para escenarios nominales y de error.

Severidad sugerida:
- Alta: ausencia de tests o cobertura muy por debajo de 80% en lógica core.
- Media: cobertura marginalmente por debajo o sin pruebas de error.

### 5.5 Revisión de Seguridad de Aplicación (7.5)
Validar:
- Validación estricta de entradas.
- Sanitización de filtros/parámetros.
- Secretos fuera de código fuente (variables de entorno/secret manager).
- Ausencia de credenciales hardcodeadas.

Incumplimientos críticos:
- Tokens/credenciales en repositorio.
- Endpoints sin validación de payload en entradas sensibles.

Severidad sugerida:
- Critica: exposición de secretos o vulnerabilidad directa.
- Alta: validaciones insuficientes en rutas críticas.
- Media: validación parcial en rutas secundarias.

### 5.6 Revisión de DevOps y CI/CD (7.6)
Validar:
- Pipeline con etapas mínimas: build, test, análisis estático, empaquetado.
- Quality gate obligatorio para merge.
- Versionado semántico aplicado.
- Evidencia de estrategia de despliegue por ambiente.

Evidencia mínima:
- Archivo de pipeline versionado.
- Reglas de protección de rama o política equivalente.
- Historial de versiones/releases consistente con semver.

Severidad sugerida:
- Alta: falta de quality gate o ausencia de etapas obligatorias.
- Media: semver inconsistente o trazabilidad incompleta de despliegue.

### 5.7 Revisión de Documentación Técnica (7.7)
Validar:
- README con arquitectura, setup, ejecución y troubleshooting.
- Diagrama de componentes actualizado.
- Especificación OpenAPI/Swagger (si aplica API).
- Catálogo de errores y códigos funcionales.

Evidencia mínima:
- Archivos de documentación presentes y actualizados.
- Coherencia entre documentación y comportamiento real de la solución.

Severidad sugerida:
- Media: documentación incompleta en elementos clave.
- Baja: desactualización menor sin impacto operativo inmediato.

## 6. Matriz de Cumplimiento Minima
El agente debe emitir esta matriz por revisión:

| Regla | Estado | Severidad Max | Evidencia | Hallazgo |
|---|---|---|---|---|
| 7.1 Principios de diseño | Cumple/No cumple | Critica | rutas + diff + justificación | descripción breve |
| 7.2 Calidad de código | Cumple/No cumple | Alta | salida lint + PR review | descripción breve |
| 7.3 Arquitectura | Cumple/No cumple | Critica | estructura + dependencias | descripción breve |
| 7.4 Pruebas | Cumple/No cumple | Alta | test report + coverage | descripción breve |
| 7.5 Seguridad app | Cumple/No cumple | Critica | escaneo + config secretos | descripción breve |
| 7.6 DevOps/CI-CD | Cumple/No cumple | Alta | pipeline + quality gate | descripción breve |
| 7.7 Documentación | Cumple/No cumple | Media | README + diagramas + spec | descripción breve |

## 7. Reglas Detectables Semiautomaticas

### 7.1 Patrones de riesgo sugeridos (regex orientativa)
- Posibles secretos hardcodeados:
	- `(?i)(password|passwd|secret|token|apikey)\s*[:=]\s*['\"][^'\"]+['\"]`
- Posible lógica en controladores (heurística):
	- archivos de controlador con bloques de cálculo extensos o reglas condicionales complejas.
- Dependencia de framework en dominio (heurística por imports):
	- imports de paquetes web/http dentro de carpetas de dominio.

### 7.2 Validaciones de cobertura de pipeline
El agente debe verificar existencia y éxito de:
- Etapa de build.
- Etapa de test.
- Etapa de análisis estático/lint.
- Etapa de empaquetado.

Si falta alguna, marcar hallazgo Alta.

### 7.3 Validaciones de pruebas
El agente debe verificar:
- Existencia de suites unitarias.
- Existencia de suites de integración.
- Evidencia de validación de contratos JSON.

Si no existe evidencia para una categoría obligatoria, marcar hallazgo Alta.

## 8. Formato de Salida del Agente
El reporte final debe contener:
- Estado global: `PASS`, `PASS CON OBSERVACIONES` o `FAIL`.
- Resumen ejecutivo (maximo 10 lineas).
- Hallazgos ordenados por severidad.
- Evidencias por hallazgo (archivo, línea, log, reporte).
- Acciones correctivas propuestas con prioridad.
- Matriz de cumplimiento completa (sección 6).

## 9. Checklist Operativo de Revision
- [ ] Se evaluaron todas las reglas 7.1 a 7.7.
- [ ] Se adjuntó evidencia verificable por cada regla.
- [ ] Se clasificaron hallazgos por severidad.
- [ ] Se aplicó el criterio de decisión de la sección 3.
- [ ] Se emitió reporte final con matriz de cumplimiento.
- [ ] Se definieron acciones correctivas para cada hallazgo Alta/Critica.

## 10. Criterio Final de Aprobacion
- Aprobado: estado `PASS`.
- Aprobado con seguimiento: `PASS CON OBSERVACIONES` y plan de remediación comprometido.
- Rechazado: estado `FAIL`; requiere corrección y nueva revisión.
