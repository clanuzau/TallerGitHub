# Guía: Crear una cuenta gratuita personal en GitHub Copilot

Esta guía describe el paso a paso para que cualquier participante del taller pueda activar **GitHub Copilot Free** con una cuenta personal de GitHub, sin tarjeta de crédito ni licencia corporativa.

> Referencia oficial: [docs.github.com - Getting started with a GitHub Copilot plan](https://docs.github.com/en/copilot/how-tos/manage-your-account/get-started-with-a-copilot-plan).


## 1. Crear la cuenta personal de GitHub

Si ya cuentas con una cuenta personal de GitHub, salta directamente al paso 3.

1. Abre el navegador e ingresa a https://github.com.
2. Haz clic en **Sign up** (esquina superior derecha).
3. Completa el formulario:
   - **Email**: usa un correo personal.
   - **Password**: contraseña fuerte (mínimo 15 caracteres o 8 caracteres con número y letra, según las reglas de GitHub).
   - **Username**: identificador único, será visible públicamente.
4. Resuelve el captcha de verificación.
5. GitHub enviará un **código de 6 dígitos** al correo. Ingrésalo para confirmar la cuenta.
6. Selecciona las preferencias iniciales (puedes usar las opciones por defecto y luego ajustarlas).
7. Confirma la creación de la cuenta. Quedarás logueado automáticamente.

## 2. Activar Copilot Free desde GitHub.com

1. Una vez logueado, haz clic en tu **foto de perfil** (esquina superior derecha).
2. Selecciona **Your Copilot** o **Copilot settings**.
   - Alternativamente, abre directamente: https://github.com/settings/copilot.
3. En la página de Copilot, haz clic en **Start using Copilot Free**.
4. Acepta los términos del producto y de privacidad cuando se solicite.
5. Serás redirigido a https://github.com/copilot, la interfaz de chat de Copilot. Esto confirma que tu cuenta ya tiene Copilot Free activo.


## 3. Verificar acceso desde la interfaz web

1. Ingresa a https://github.com/copilot.
2. Escribe una consulta corta de prueba en el chat, por ejemplo:
   ```
   Explícame qué es un servicio REST en una línea.
   ```
3. Si recibes respuesta, Copilot Free está activo y operativo.

## 4. Instalar Copilot en Visual Studio Code

VS Code es el editor recomendado para el taller.

1. Descarga e instala VS Code desde https://code.visualstudio.com (si aún no lo tienes).
2. Abre VS Code.
3. Ve a la vista de extensiones (`Ctrl+Shift+X` en Windows).
4. Busca **GitHub Copilot** y haz clic en **Install**.
5. Busca también **GitHub Copilot Chat** e instálala.
6. Una vez instalada, VS Code mostrará una notificación pidiendo iniciar sesión. Haz clic en **Sign in to GitHub**.
7. Se abrirá el navegador para autorizar el acceso. Confirma con tu cuenta de GitHub.
8. Vuelve a VS Code. En la barra inferior debería aparecer el ícono de Copilot activo.

### Validación rápida en VS Code

1. Crea un archivo `prueba.py`.
2. Escribe un comentario:
   ```python
   # Función que suma dos números
   ```
3. Pulsa Enter. Copilot debe sugerir la implementación. Acepta con `Tab`.
4. Abre el panel de Copilot Chat (`Ctrl+Alt+I`) y haz una pregunta breve para validar que el chat también responde.

## 5. Instalar Copilot en otros IDEs (opcional)

Copilot Free también está disponible para:

- Visual Studio.
- JetBrains IDEs (IntelliJ, PyCharm, WebStorm, Rider, etc.).
- Eclipse.
- Xcode.
- Vim / Neovim.
- Azure Data Studio.

El flujo es similar:
1. Instalar el plugin oficial de **GitHub Copilot** desde el marketplace del IDE.
2. Iniciar sesión con la cuenta de GitHub que tiene Copilot Free activo.

Para enlaces de descarga centralizados, ingresa a https://github.com/copilot, haz clic en el menú **Download** y elige tu IDE.

## 6. Solución de problemas comunes

| Problema | Causa probable | Solución |
|---|---|---|
| No aparece la opción "Start using Copilot Free" | La cuenta es *managed user* o pertenece a una organización sin Copilot habilitado. | Crear una cuenta personal nueva con correo personal. |
| El correo de verificación no llega | Filtros del proveedor de correo o dominio bloqueado. | Revisar carpeta de spam, o registrarse con otro proveedor (Gmail/Outlook). |
| VS Code no detecta Copilot tras login | Sesión de GitHub desincronizada. | Cerrar VS Code, ejecutar comando `GitHub: Sign out` desde la paleta (`Ctrl+Shift+P`) y volver a iniciar sesión. |
| Mensaje "You have reached your monthly limit" | Se agotó la cuota mensual de Copilot Free. | Esperar al reinicio mensual indicado en el aviso, o evaluar un plan superior cuando GitHub reabra los registros. |
| Las sugerencias no aparecen en un archivo | El lenguaje o tipo de archivo está deshabilitado. | Abrir `Settings` y revisar `GitHub.copilot.enable` para habilitar el lenguaje correspondiente. |

## 8. Checklist final

- [ ] Cuenta de GitHub personal creada y verificada.
- [ ] Copilot Free activado desde https://github.com/settings/copilot.
- [ ] Acceso confirmado en https://github.com/copilot.
- [ ] Extensión de Copilot instalada en VS Code (o IDE de preferencia).
- [ ] Sesión iniciada en el IDE con la misma cuenta de GitHub.
- [ ] Prueba exitosa de autocompletado y de chat.
