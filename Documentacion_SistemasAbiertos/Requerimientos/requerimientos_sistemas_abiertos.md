# Requerimientos - Sistemas Abiertos

## 1. Contexto
Este documento define los requerimientos para el desarrollo en Sistemas Abiertos con base en el JSON de conciliación generado desde IBM i y documentado en `Documentacion_IBMi/Requerimientos/requerimientos_taller.md`.

El objetivo es construir un sitio que lea, procese y visualice de forma ordenada la información de conciliación contable, incluyendo gráficos, indicadores y trazabilidad de ejecución.

## 2. Objetivo General
Construir una solución en Sistemas Abiertos que:
- Consuma el JSON de conciliación generado en IBM i.
- Visualice la información de forma clara, ordenada y auditable.
- Presente gráficas e indicadores para análisis contable.
- Permita revisar diferencias, partidas conciliatorias e incidentes.

## 3. Alcance Funcional
Incluye:
- Carga y validación del JSON de conciliación.
- Visualización de resumen general y detalle por cuenta contable.
- Panel gráfico de conciliación (totales, diferencias y estados).
- Consulta y filtrado por banco, sucursal, moneda, fecha y estado de conciliación.
- Exportación de vistas/reportes (por ejemplo CSV/PDF/JSON). 

No incluye:
- Modificación de datos en IBM i.
- Reconciliación automática en el origen.
- Integración en tiempo real si no se define explícitamente en el sprint.

## 4. Stack Tecnológico (Libre)
Se permite implementar con cualquier stack moderno, por ejemplo:
- Backend: Java (Spring Boot), .NET (ASP.NET Core), Node.js (Nest/Express), Python (FastAPI/Django).
- Frontend: Angular, React, Vue, Blazor u otro framework moderno.
- Base auxiliar (opcional): PostgreSQL, SQL Server, MySQL o MongoDB.

Condición: la arquitectura y el código deben cumplir con los estándares definidos en este documento.

## 5. Requerimientos Funcionales

### RSA-01. Ingesta de JSON
La aplicación debe leer el JSON de conciliación desde archivo, endpoint o repositorio definido para el taller.

### RSA-02. Validación de estructura
La aplicación debe validar que el JSON cumpla la estructura esperada (metadata, ejecucion, contexto, cuentas, controlTotales, incidentes).

### RSA-03. Dashboard de conciliación
Debe mostrar:
- Total de cuentas procesadas.
- Total conciliadas.
- Total con diferencia.
- Sumatoria de saldos fuente vs conciliados.
- Sumatoria de diferencia neta.

### RSA-04. Visualización por cuenta contable
Debe permitir consultar cada cuenta con:
- Datos de cabecera.
- Saldos (inicial, débitos, créditos, final fuente, conciliado).
- Diferencias y tolerancia.
- Estado de conciliación.

### RSA-05. Partidas conciliatorias
Debe mostrar partidas por cuenta con filtros por tipo, estado, monto y fecha.

### RSA-06. Incidentes y alertas
Debe visualizar incidentes con severidad y permitir identificar cuentas con estado crítico.

### RSA-07. Filtros y búsqueda
Debe soportar filtros por banco, sucursal, moneda, período, cuenta contable, estado y severidad.

### RSA-08. Gráficas
Debe incluir al menos:
- Distribución de estados de conciliación.
- Evolución temporal de diferencias.
- Top cuentas con mayor diferencia.
- Comparativo saldo fuente vs saldo conciliado.

### RSA-09. Trazabilidad
Debe mostrar metadatos de ejecución (idEjecucion, fecha/hora, programa, ambiente, usuario).

### RSA-10. Exportación
Debe permitir exportar resultados filtrados y/o panel consolidado.

## 6. Requerimientos No Funcionales

### RNSA-01. Seguridad
- Autenticación obligatoria (según estándar del proyecto).
- Autorización basada en roles (mínimo lectura y administrador).
- Protección de datos sensibles en tránsito (HTTPS/TLS).

### RNSA-02. Rendimiento
- Carga de dashboard principal en tiempo objetivo menor a 3 segundos para dataset de referencia.
- Paginación y virtualización en listados grandes.

### RNSA-03. Disponibilidad
- Manejo robusto de errores y recuperación de fallos de lectura de JSON.
- Mensajes funcionales claros para usuario final.

### RNSA-04. Observabilidad
- Logging estructurado (JSON logs recomendado).
- Trazas por request/correlación.
- Métricas mínimas (latencia, errores, throughput).

### RNSA-05. Mantenibilidad
- Arquitectura modular y desacoplada.
- Separación clara entre dominio, aplicación, infraestructura y presentación.

## 7. Estándar de Desarrollo (Obligatorio)

### 7.1 Principios de diseño
- SOLID completo.
- DRY (Don’t Repeat Yourself).
- KISS (Keep It Simple, Stupid).
- YAGNI (You Aren’t Gonna Need It).
- Separación de responsabilidades por capa.

### 7.2 Calidad de código
- Convenciones de estilo por lenguaje.
- Linting y formateo automático.
- Revisión de código por Pull Request.
- Prohibido mezclar lógica de negocio con capa de UI/controladores.

### 7.3 Arquitectura recomendada
- Arquitectura limpia (Clean Architecture) o Hexagonal.
- Dominio independiente de framework.
- DTOs para contratos de entrada/salida.
- Adaptadores para fuentes externas (archivo IFS/API/DB).

### 7.4 Pruebas
- Unit tests para reglas de conciliación y transformación JSON.
- Integration tests para flujo API/UI.
- Contract tests para validar esquema JSON de entrada.
- Cobertura mínima recomendada: 80% en lógica de negocio.

### 7.5 Seguridad de aplicación
- Validación estricta de entrada.
- Sanitización de parámetros de búsqueda.
- Manejo de secretos por variables de entorno/secret manager.
- No hardcodear credenciales ni rutas sensibles.

### 7.6 DevOps y CI/CD
- Pipeline con etapas mínimas: build, test, análisis estático, empaquetado.
- Quality gate obligatorio para merge.
- Versionado semántico.
- Estrategia de despliegue trazable por ambiente.

### 7.7 Documentación técnica
- README con arquitectura, setup, ejecución y troubleshooting.
- Diagrama de componentes.
- Especificación de API (OpenAPI/Swagger si aplica).
- Catálogo de errores y códigos funcionales.

## 8. Modelo de Integración con IBM i

### 8.1 Origen
JSON producido por proceso IBM i de conciliación (GLBLN/TRANS/TRDSC/TTRAN).

### 8.2 Estrategias de consumo
- Lectura directa de archivo JSON desde ubicación compartida.
- Ingesta por proceso batch hacia almacenamiento intermedio.
- Exposición por endpoint interno de backend.

### 8.3 Validación de contrato
Debe validarse el JSON contra esquema acordado antes de su procesamiento.

## 9. Criterios de Aceptación
- El sitio despliega correctamente el JSON de conciliación.
- Los indicadores del dashboard coinciden con `controlTotales`.
- Las cuentas con diferencia y partidas se visualizan sin pérdida de información.
- Las gráficas representan fielmente la información del JSON.
- Se cumple el estándar de desarrollo moderno definido.
- Se entrega evidencia de pruebas y calidad.

## 10. Entregables
- Código fuente completo (frontend y backend).
- Documento de arquitectura.
- Evidencia de pruebas (unitarias/integración).
- Pipeline CI/CD configurado.
- Manual de despliegue y operación.
- Evidencia visual del dashboard y vistas de conciliación.

## 11. Lista de Validación del Taller
- [ ] Consumo JSON implementado.
- [ ] Validación de estructura JSON implementada.
- [ ] Dashboard con KPIs implementado.
- [ ] Vista detalle por cuenta implementada.
- [ ] Filtros y búsqueda implementados.
- [ ] Gráficas obligatorias implementadas.
- [ ] Manejo de incidentes implementado.
- [ ] Autenticación/autorización implementada.
- [ ] Pruebas y cobertura reportadas.
- [ ] Linting, análisis estático y quality gate en CI/CD.
