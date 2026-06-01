# TallerGitHub - Cesar Lanuza

Repositorio del taller para construir una solución de conciliación contable con dos frentes:
- IBM i (origen y generación de JSON de conciliación).
- Sistemas Abiertos (consumo, visualización, métricas y gobierno de calidad).

Este README centraliza el instructivo del taller y la navegación de toda la documentación generada.

## Requisito Previo: Cuenta de GitHub Copilot
Aplica a todos los participantes del taller, tanto del frente IBM i como del frente Sistemas Abiertos.

- Guía obligatoria para activar GitHub Copilot Free:
  - [Guias/Guia_GitHubCopilot.md](Guias/Guia_GitHubCopilot.md)

Reglas obligatorias para la cuenta:
- La cuenta debe ser **personal**, no corporativa.
- **NO se permite usar correo corporativo** para el registro. Debe ser un correo personal (Gmail, Outlook, iCloud u otro proveedor personal).
- Los correos corporativos suelen tener políticas que bloquean el dominio de GitHub o impiden activar Copilot Free, lo que invalida el acceso para el taller.
- La cuenta es individual e intransferible; no se permite compartir credenciales entre participantes.
- Cada participante es responsable de mantener activa su cuenta durante toda la duración del taller.
- Este taller debe realizarse de manera local, no se permite credenciales o ambientes del BAC.

## 1. Objetivo del Taller
- Definir y documentar el modelo de datos de conciliación en IBM i.
- Diseñar el contrato JSON de salida para conciliación.
- Construir requerimientos funcionales y no funcionales para Sistemas Abiertos.
- Establecer reglas de revisión por agente con criterios auditables de cumplimiento.

## 2. Estructura Actual del Repositorio

```text
.
├── Documentacion_IBMi/
│   ├── Base_Datos/
│   │   └── estructura_bd.md
│   ├── Codigo_Ejemplos/
│   │   ├── EjemploJSON.sql
│   │   ├── GrabaIFS.sql
│   │   └── PracticaJSON.sql
│   └── Requerimientos/
│       └── requerimientos_taller.md
├── Documentacion_SistemasAbiertos/
│   ├── Diseño/
│   │   └── diseno_dashboard_sistemas_abiertos.md
│   └── Requerimientos/
│       └── requerimientos_sistemas_abiertos.md
├── Guias/
│   ├── Guia_GitHubCopilot_CuentaGratuita.md
│   └── Guia_PUB400_CrearCuenta.md
├── Reglas/
│   ├── Revision_IBMi.md
│   └── Revision_SistemasAbiertos.md
├── LICENSE
└── README.md
```

## 3. Documentación Principal

### 3.1 IBM i
- Modelo de datos y diccionario técnico:
  - [Documentacion_IBMi/Base_Datos/estructura_bd.md](Documentacion_IBMi/Base_Datos/estructura_bd.md)
- Requerimientos funcionales y técnicos IBM i:
  - [Documentacion_IBMi/Requerimientos/requerimientos_taller.md](Documentacion_IBMi/Requerimientos/requerimientos_taller.md)
- Scripts de ejemplo (SQL/JSON/IFS):
  - [Documentacion_IBMi/Codigo_Ejemplos/EjemploJSON.sql](Documentacion_IBMi/Codigo_Ejemplos/EjemploJSON.sql)
  - [Documentacion_IBMi/Codigo_Ejemplos/GrabaIFS.sql](Documentacion_IBMi/Codigo_Ejemplos/GrabaIFS.sql)
  - [Documentacion_IBMi/Codigo_Ejemplos/PracticaJSON.sql](Documentacion_IBMi/Codigo_Ejemplos/PracticaJSON.sql)
- Guía obligatoria para acceso al servidor IBM i (PUB400):
  - [Guias/Guia_PUB400.md](Guias/Guia_PUB400.md)
  - Antes de iniciar el desarrollo en IBM i, cada participante debe crear su propio usuario gratuito en PUB400 e instalar IBM i Access Client Solutions. Sin esto no es posible ejecutar los entregables del frente IBM i.
  - Implicaciones del uso del servidor:
    - El usuario es individual, no se comparte entre participantes.
    - Se trabaja con autoridad `*PGMR` y librerías personales asignadas por PUB400.
    - El servicio es gratuito, sin soporte oficial y sin backup de datos.
    - No se permiten objetos PF/LF; solo tablas y vistas SQL.

### 3.2 Sistemas Abiertos
- Requerimientos de solución (backend, frontend, integración y calidad):
  - [Documentacion_SistemasAbiertos/Requerimientos/requerimientos_sistemas_abiertos.md](Documentacion_SistemasAbiertos/Requerimientos/requerimientos_sistemas_abiertos.md)
- Diseño visual del dashboard y lineamientos UX:
  - [Documentacion_SistemasAbiertos/Diseño/diseno_dashboard_sistemas_abiertos.md](Documentacion_SistemasAbiertos/Diseño/diseno_dashboard_sistemas_abiertos.md)

### 3.3 Reglas de Revisión por Agente
- Reglas de revisión para entregables IBM i:
  - [Reglas/Revision_IBMi.md](Reglas/Revision_IBMi.md)
- Reglas de revisión para entregables de Sistemas Abiertos:
  - [Reglas/Revision_SistemasAbiertos.md](Reglas/Revision_SistemasAbiertos.md)

## 4. Instructivo del Taller (Paso a Paso)

### Fase 1: Entendimiento y base documental
1. Leer [Documentacion_IBMi/Base_Datos/estructura_bd.md](Documentacion_IBMi/Base_Datos/estructura_bd.md).
2. Revisar [Documentacion_IBMi/Requerimientos/requerimientos_taller.md](Documentacion_IBMi/Requerimientos/requerimientos_taller.md).
3. Confirmar contrato JSON de conciliación y trazabilidad JSON <-> base de datos.

### Fase 2: Construcción IBM i
1. Implementar o ajustar procesos SQLRPGLE y servicios asociados.
2. Generar JSON de conciliación en IFS según el contrato definido.
3. Verificar coherencia entre totales, cuentas, diferencias e incidentes.

### Fase 3: Construcción en Sistemas Abiertos
1. Usar como base [Documentacion_SistemasAbiertos/Requerimientos/requerimientos_sistemas_abiertos.md](Documentacion_SistemasAbiertos/Requerimientos/requerimientos_sistemas_abiertos.md).
2. Implementar ingesta, validación del JSON, dashboard, filtros, gráficas y exportación.
3. Alinear la experiencia visual con [Documentacion_SistemasAbiertos/Diseño/diseno_dashboard_sistemas_abiertos.md](Documentacion_SistemasAbiertos/Diseño/diseno_dashboard_sistemas_abiertos.md).

### Fase 4: Calidad, pruebas y cumplimiento
1. Ejecutar pruebas unitarias, integración y contrato.
2. Asegurar cumplimiento de estándares de diseño, arquitectura y seguridad.
3. Validar cobertura y quality gate en CI/CD.

### Fase 5: Revisión por agente
1. Aplicar [Reglas/Revision_IBMi.md](Reglas/Revision_IBMi.md) a entregables IBM i.
2. Aplicar [Reglas/Revision_SistemasAbiertos.md](Reglas/Revision_SistemasAbiertos.md) a entregables de Sistemas Abiertos.
3. Emitir reporte con severidades, evidencias y estado final:
   - PASS
   - PASS CON OBSERVACIONES
   - FAIL

## 5. Criterios de Entrega del Taller
- La solución respeta requerimientos funcionales y no funcionales documentados.
- El JSON de conciliación se procesa sin pérdida de información.
- Las visualizaciones representan fielmente los datos y totales de control.
- Se cumple el estándar de desarrollo y de revisión por agente.
- Existe evidencia de pruebas y trazabilidad técnica.

## 6. Uso Recomendado de GitHub Copilot en el Taller
- Pedir generación asistida por unidad pequeña de trabajo.
- Solicitar explicación técnica antes de aceptar cambios críticos.
- Exigir refactor cuando exista acoplamiento, duplicidad o baja legibilidad.
- Solicitar siempre pruebas y criterios de aceptación por historia o módulo.
- Usar Copilot también para revisión técnica previa al Pull Request.

## 7. Convención de Trabajo del Equipo
- Commits atómicos y mensajes claros.
- Pull Request con alcance delimitado y evidencia adjunta.
- Sin mezclar cambios funcionales grandes con ajustes cosméticos.
- Mantener la documentación actualizada junto con cada cambio relevante.

## 8. Licencia
Este proyecto está bajo la licencia MIT.
Consulta [LICENSE](LICENSE).
