# Reglas de Revision para Agentes - Taller IBM i

## 1. Objetivo
Estandarizar la revision del codigo entregado por cada equipo del taller para asegurar calidad tecnica, mantenibilidad, trazabilidad y cumplimiento funcional.

Esta guia define:
- Que debe revisar un agente.
- Como debe revisar.
- Como debe reportar hallazgos.
- Criterios de aprobacion/rechazo.

## 2. Alcance de la Revision
Aplica a todos los proyectos del taller que incluyan:
- Componentes IBM i (SQLRPGLE, modulos, programas de servicio, salida JSON en IFS).
- Componentes de Sistemas Abiertos (si corresponde por fase del taller).
- Documentacion tecnica y evidencia de pruebas.

## 3. Principios Generales de Revision
- Objetividad: revisar con base en evidencia, no en preferencias personales.
- Trazabilidad: todo hallazgo debe citar archivo, seccion y razon tecnica.
- Riesgo primero: priorizar defectos funcionales, seguridad y regresiones.
- No suposiciones: cuando falte informacion, marcarlo como duda/pendiente.
- Reproducibilidad: el hallazgo debe poder verificarse por terceros.

## 4. Niveles de Severidad
- Critica:
	Riesgo alto de datos incorrectos, perdida de integridad, incumplimiento funcional mayor o vulnerabilidad grave.
- Alta:
	Puede generar resultados incorrectos o fallas operativas relevantes.
- Media:
	Problema de calidad/diseno que afecta mantenibilidad o confiabilidad.
- Baja:
	Mejora recomendada sin impacto funcional inmediato.

## 5. Flujo de Revision del Agente
1. Revisar contexto del proyecto y alcance entregado.
2. Verificar estructura de componentes (arquitectura IBM i).
3. Ejecutar checklist tecnico de cumplimiento.
4. Validar pruebas y evidencias.
5. Emitir reporte con hallazgos priorizados.
6. Emitir decision: Aprobado, Aprobado con observaciones, Rechazado.

## 6. Checklist Obligatorio de Cumplimiento

### 6.1 Principios SOLID en arquitectura IBM i
Validar:
- SRP: cada programa/modulo tiene una responsabilidad clara.
- OCP: reglas de negocio extensibles sin romper nucleo.
- LSP: procedimientos intercambiables sin romper contrato.
- ISP: contratos separados por contexto funcional.
- DIP: negocio desacoplado de acceso a datos/IFS.

Evidencia minima:
- Mapa de componentes y responsabilidades.
- Identificacion de contratos de servicio.

Falla critica si:
- La logica de negocio y salida IFS estan fuertemente acopladas sin separacion.

### 6.2 Arquitectura de software IBM i
Validar:
- Existe programa principal de orquestacion.
- Existen modulos separados para acceso a datos, negocio y salida JSON.
- Los programas de servicio encapsulan utilidades reutilizables.
- El flujo batch es trazable por id de ejecucion.

Evidencia minima:
- Diagrama/logica de flujo.
- Estructura de objetos y responsabilidades.

Falla alta si:
- No existe separacion de capas o componentes.

### 6.3 Codigo limpio
Validar:
- Procedimientos cortos y legibles.
- Nula o baja duplicacion de logica (DRY).
- Complejidad ciclomatica razonable.
- Comentarios utiles y consistentes.

Evidencia minima:
- Muestras de modulos clave.
- Resultado de formateo/linter si aplica.

Falla alta si:
- Existen bloques monoliticos extensos con multiples responsabilidades.

### 6.4 Automatizacion de pruebas y documentacion
Validar:
- Pruebas unitarias de reglas clave de conciliacion.
- Pruebas de integracion del flujo principal.
- Validacion estructural del JSON de salida.
- Documentacion de ejecucion y troubleshooting.

Evidencia minima:
- Reporte de pruebas con resultado.
- Ejemplo de JSON validado.
- README actualizado.

Falla critica si:
- No existen pruebas de flujo principal ni evidencia de ejecucion.

### 6.5 Refactorizacion de codigo
Validar:
- Mejoras incrementales sin romper funcionalidad.
- Reduccion de deuda tecnica.
- Cambios respaldados por pruebas.

Evidencia minima:
- Registro de cambios/refactor.
- Comparacion antes/despues en areas criticas.

Falla media si:
- Se detecta deuda tecnica acumulada sin plan de correccion.

### 6.6 Nomenclatura y estandar de nombres
Validar:
- Convenciones de nombres documentadas.
- Nombres semanticos en programas, modulos, procedimientos y variables.
- Patron consistente para archivos JSON y objetos IFS.

Evidencia minima:
- Seccion de convenciones en documentacion.
- Muestra de nombres de objetos/codigo.

Falla media si:
- Hay nomenclatura inconsistente o ambigua en componentes clave.

## 7. Validaciones Funcionales Minimas (JSON y Conciliacion)
Validar que:
- Se genera JSON valido UTF-8.
- El JSON contiene: metadata, ejecucion, contexto, cuentas, controlTotales, incidentes.
- `controlTotales.sumatoriaDiferenciaNeta` coincide con sumatoria de diferencias por cuenta.
- Cuentas con diferencia fuera de tolerancia estan marcadas para revision.
- Incidentes severidad ALTA/CRITICA impactan estado de ejecucion.

Falla critica si:
- El JSON no cumple estructura minima o contiene inconsistencia de totales.

## 8. Reglas para Reporte de Hallazgos del Agente
Cada hallazgo debe incluir:
- ID unico del hallazgo.
- Severidad.
- Componente afectado.
- Evidencia (archivo/seccion/fragmento).
- Impacto.
- Recomendacion concreta.
- Estado (abierto, resuelto, no aplica).

Formato recomendado por hallazgo:
- Hallazgo: H-001
- Severidad: Alta
- Componente: Modulo de negocio
- Evidencia: procedimiento X en archivo Y
- Impacto: calculo incorrecto de saldo final
- Recomendacion: separar regla y agregar prueba unitaria

## 9. Criterios de Decision de la Revision
- Aprobado:
	Sin hallazgos Criticos/Altos y con evidencia de pruebas.
- Aprobado con observaciones:
	Solo hallazgos Medios/Bajos con plan de correccion.
- Rechazado:
	Uno o mas hallazgos Criticos o ausencia de pruebas/evidencias minimas.

## 10. Reglas de Re-Revision
- Todo hallazgo Critico/Alto debe cerrarse con evidencia.
- No se acepta cierre declarativo sin prueba.
- Cambios de correccion deben incluir validacion de no regresion.

## 11. Evidencia Minima por Entrega
- Codigo fuente actualizado.
- JSON de salida de ejemplo real.
- Evidencia de pruebas (unitarias/integracion).
- Documentacion tecnica actualizada.
- Resultado de revision con checklist completo.

## 12. Checklist Rapido del Revisor (Agente)
- [ ] Arquitectura modular IBM i identificable.
- [ ] Principios SOLID aplicados en componentes criticos.
- [ ] Codigo legible, cohesivo y sin duplicacion grave.
- [ ] Pruebas automatizadas ejecutadas y evidenciadas.
- [ ] JSON de conciliacion valido y consistente.
- [ ] Nomenclatura y estandares respetados.
- [ ] Reporte de hallazgos emitido con severidad y evidencia.
- [ ] Decision final de revision registrada.

## 13. Estandar Obligatorio para Scripts SQL de Tablas
Toda tabla creada en el taller debe cumplir la estructura de metadata y comentarios del patron definido en el archivo de referencia "Tabla NovaTalentos.sql".

### 13.1 Estructura obligatoria minima por tabla
El agente debe validar que cada script de creacion de tabla incluya, en este orden logico:
- Bloque de encabezado con metadata funcional (nombre, descripcion, objetivo, tipo, origen, permanencia, uso, restricciones).
- Bloque de autoria y contexto (equipo, fecha, proyecto).
- Sentencia `CREATE OR REPLACE TABLE`.
- Definicion de columnas con alias de sistema mediante `FOR COLUMN`.
- Definicion de `PRIMARY KEY` por `CONSTRAINT`.
- `RCDFMT` definido para formato de registro.
- `RENAME TABLE ... TO ... FOR SYSTEM NAME ...` cuando aplique estandar de nombres largos/cortos.
- `COMMENT ON TABLE` y `LABEL ON TABLE`.
- `COMMENT ON COLUMN` para todas las columnas.
- `LABEL ON COLUMN` para headers de todas las columnas.
- `LABEL ON COLUMN ... TEXT IS` para descripcion larga de todas las columnas.

### 13.2 Regla de completitud de metadata
No se acepta plantilla vacia. El agente debe marcar incumplimiento si detecta campos de metadata sin contenido real (por ejemplo: "N/A", vacios o placeholders) en secciones que deben ser especificas del proyecto.

### 13.3 Cobertura total de comentarios
El agente debe validar que todas las columnas definidas en la tabla tengan:
- Comment tecnico.
- Label corto.
- Label texto largo.

Si falta uno de estos tres por cualquier columna, la revision debe marcar hallazgo.

## 14. Regla de Objetos Permitidos en BD (IBM i)

### 14.1 Restriccion de tipos de objeto
Para el alcance del taller, solo se permite crear:
- Tablas SQL.
- Vistas SQL.

No se permite crear:
- PF (Physical Files tradicionales DDS).
- LF (Logical Files tradicionales DDS).

### 14.2 Validacion obligatoria del agente
El agente debe revisar scripts y evidencia de despliegue para confirmar que:
- No existen sentencias o artefactos DDS para PF/LF.
- No se usan comandos de creacion de PF/LF en CL o pipelines.
- Toda estructura nueva de datos fue creada via SQL DDL (`CREATE TABLE` / `CREATE VIEW`).

### 14.3 Criterio de fallo
- Falla Critica si se detecta creacion de PF o LF.
- Falla Alta si una tabla SQL no cumple metadata/comentarios completos.

## 15. Checklist de Validacion SQL (Obligatorio)
- [ ] Cada tabla incluye bloque completo de metadata funcional y de proyecto.
- [ ] Cada tabla define `CREATE OR REPLACE TABLE` con `FOR COLUMN` y `PRIMARY KEY`.
- [ ] Cada tabla incluye `COMMENT ON TABLE` y `LABEL ON TABLE`.
- [ ] Todas las columnas tienen `COMMENT ON COLUMN`.
- [ ] Todas las columnas tienen `LABEL ON COLUMN` y `LABEL ... TEXT IS`.
- [ ] No existen PF ni LF en scripts, despliegues ni evidencias.
- [ ] Solo se crean tablas y vistas SQL.

## 16. Patrones Detectables y Validacion Semiautomatica (CI)
Esta seccion define reglas que el agente puede ejecutar de forma automatica o semiautomatica para detectar incumplimientos.

### 16.1 Reglas de presencia obligatoria (regex sugeridas)
Aplicar sobre archivos `.sql` de creacion de tabla.

- Debe existir encabezado de metadata:
	- `^--=+`
	- `Nombre de la Tabla:`
	- `DESCRIPCI[OÓ]N:`
	- `Objetivo:`
	- `Tipo de Tabla:`
	- `Origen de los Datos:`
	- `Permanencia de Datos:`
	- `Uso de los datos:`
	- `Hecho por:`
	- `Fecha:`
	- `Proyecto:`

- Debe existir creacion de tabla SQL:
	- `CREATE\s+OR\s+REPLACE\s+TABLE\s+` 

- Debe existir alias de sistema en columnas:
	- `\bFOR\s+COLUMN\b`

- Debe existir PK declarada:
	- `CONSTRAINT\s+\w+\s+PRIMARY\s+KEY`

- Debe existir formato de registro:
	- `\bRCDFMT\b`

- Debe existir metadata de tabla:
	- `COMMENT\s+ON\s+TABLE\s+`
	- `LABEL\s+ON\s+TABLE\s+`

- Debe existir metadata de columnas:
	- `COMMENT\s+ON\s+COLUMN\s+`
	- `LABEL\s+ON\s+COLUMN\s+`
	- `LABEL\s+ON\s+COLUMN\s+.*\s+TEXT\s+IS`

### 16.2 Reglas de prohibicion (PF/LF)
Si se detecta cualquiera de los siguientes patrones, marcar falla Critica:

- DDS PF/LF o comandos de creacion tradicionales:
	- `\bCRTPF\b`
	- `\bCRTLF\b`
	- `\bA\s+R\b` (patrones DDS sospechosos, validar manualmente para evitar falsos positivos)
	- extensiones `.pf`, `.lf`, `.dds` (si estan en alcance de entrega)

- Comandos CL de despliegue de PF/LF:
	- `CRTPF\s+FILE\(`
	- `CRTLF\s+FILE\(`

### 16.3 Reglas de completitud (metadata no vacia)
Marcar incumplimiento si se detecta metadata placeholder en scripts finales:

- `\bN/A\b`
- `DESCRIPCI[OÓ]N:\s*$`
- `Objetivo:\s*$`
- `Proyecto:\s*$`
- `Fecha:\s*$`

Nota: puede permitirse `N/A` solo si existe justificacion explicita del equipo en documento de excepciones.

### 16.4 Validaciones de consistencia basadas en conteo
El agente debe contrastar cantidades por tabla:

- `n_columnas_definidas` vs `n_COMMENT_ON_COLUMN`.
- `n_columnas_definidas` vs `n_LABEL_ON_COLUMN`.
- `n_columnas_definidas` vs `n_LABEL_TEXT_IS`.

Regla:
- Si alguna diferencia es mayor que 0, marcar hallazgo Alta.

### 16.5 Integracion recomendada en pipeline
El pipeline CI debe ejecutar:

1. Escaneo de patrones obligatorios.
2. Escaneo de patrones prohibidos (PF/LF).
3. Validacion de completitud de metadata.
4. Conteo de cobertura de comentarios/labels.
5. Generacion de reporte de hallazgos (artefacto CI).

### 16.6 Salida estandar del agente revisor
El agente debe emitir un resumen con:

- Estado global: `PASS` o `FAIL`.
- Total de reglas evaluadas.
- Reglas incumplidas con severidad.
- Lista de archivos afectados.
- Recomendaciones de correccion priorizadas.

### 16.7 Criterio de aprobacion automatica
- `PASS`: sin fallas Criticas y sin fallas Altas.
- `FAIL`: cualquier falla Critica o una o mas fallas Altas.
