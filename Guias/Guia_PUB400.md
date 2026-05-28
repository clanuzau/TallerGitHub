# Guía: Crear una cuenta gratuita en el servidor PUB400 (IBM i)

Esta guía describe el paso a paso para registrarse en **PUB400.com**, un servidor IBM i público y gratuito mantenido por RZKH GmbH (Alemania), y dejar configurada la sesión 5250 con **IBM i Access Client Solutions** para los ejercicios del taller.

> Referencias oficiales:
> - [pub400.com - signup](https://pub400.com/signup.html)
> - [pub400.com - whatdo](https://pub400.com/whatdo.html)
> - [IBM i Access - Client Solutions](https://www.ibm.com/support/pages/ibm-i-access-client-solutions)

## 1. Instalar IBM i Access Client Solutions (ACS)

Es el cliente recomendado para conectarse a PUB400 vía emulador 5250.

1. Ingresa a https://www.ibm.com/support/pages/ibm-i-access-client-solutions.
2. Descarga el paquete correspondiente a tu sistema operativo. ACS es una aplicación Java multiplataforma (Windows, macOS, Linux).
3. Si no tienes Java instalado, instala una JRE 8 o superior (por ejemplo Adoptium Temurin).
4. Extrae el archivo descargado y ejecuta el instalador o el iniciador (`acslaunch_win-64.exe` en Windows).
5. Acepta los términos de licencia y completa la instalación.

> Si ya tienes ACS instalado por una versión previa del taller, salta al paso 3.

## 2. Registrarse en PUB400

1. Abre el navegador en https://pub400.com.
2. Haz clic en **Sign up**.
3. Completa el formulario de registro:
   - **Username**: nombre corto (recomendado, máximo 10 caracteres alfanuméricos, será tu perfil de usuario IBM i).
   - **Nombre y apellido**: datos reales.
   - **Email**: usa un **correo personal** (Gmail, Outlook, iCloud, etc.). Los correos corporativos suelen bloquear los mensajes del servidor o aplicar políticas que invalidan la cuenta.
   - **Otros datos solicitados**: complétalos según el formulario vigente.
4. Acepta los términos de uso del servicio.
5. Haz clic en **Submit**.
6. PUB400 mostrará un mensaje confirmando que se ha enviado un correo de validación.

## 3. Verificar el correo y obtener la contraseña inicial

1. Abre tu bandeja de entrada (revisa también la carpeta de **Spam**).
2. Localiza el correo de PUB400 con el enlace de verificación.
3. Haz clic en el enlace para confirmar tu cuenta.
4. Vuelve a https://pub400.com.
5. Haz clic en **Reset password**.
6. Ingresa tu **username** definido en el paso 3 y haz clic en **Submit**.
7. PUB400 enviará un correo con la **contraseña temporal** del perfil IBM i.

> Importante: la contraseña inicial debe cambiarse en el primer login. Las contraseñas de IBM i tienen reglas estrictas (longitud, sin caracteres especiales no permitidos, no repetir contraseñas anteriores).

## 4. Configurar la sesión 5250 en IBM i Access Client Solutions

1. Abre **IBM i Access Client Solutions**.
2. En el menú principal, ve a **Emulador 5250 → Gestor de sesiones 5250** (o `5250 Session Manager`).
3. Haz clic en **Nueva** (o `New`) para crear una nueva configuración.
4. Completa los parámetros de conexión:
   - **Nombre del sistema (System name)**: `pub400.com`
   - **Tipo de espacio de trabajo**: por defecto.
   - **Puerto**: `23` (sin TLS) o `992` (con TLS).
5. En la pestaña o sección de **Configuración de la pantalla**:
   - **Tamaño**: 27x132 (recomendado para mejor visualización).
   - **Tipo de estación**: por defecto (`*DFT` deja que el servidor asigne).
6. En la sección **Seguridad**:
   - Si seleccionaste puerto `23`, deja la opción **No protegido** (`Not secured`).
   - Si seleccionaste puerto `992`, marca **TLS** y elige el nivel de seguridad sugerido por ACS.
7. Guarda la configuración con un nombre identificable, por ejemplo `PUB400 - Taller`.

## 5. Iniciar sesión por primera vez

1. Desde el **Gestor de sesiones 5250**, selecciona la sesión `PUB400 - Taller` y haz clic en **Iniciar** (`Start`).
2. Aparecerá la pantalla de login de IBM i.
3. Ingresa:
   - **User**: tu username de PUB400 (en mayúsculas).
   - **Password**: la contraseña temporal recibida por correo.
4. El sistema te obligará a cambiar la contraseña. Ingresa una contraseña nueva válida y confírmala.
5. Una vez logueado, deberías ver el menú principal de IBM i (`MAIN`).

### Comandos útiles para validar el acceso

- `WRKLIB MYLIB*` para listar tus librerías personales.
- `WRKUSRPRF YOUR_USER` para ver el perfil de usuario.
- `STRSQL` para abrir la sesión interactiva de SQL.
- `WRKLNK '/home/YOUR_USER'` para explorar tu carpeta IFS.
- `DSPMSG` para ver mensajes pendientes.

## 6. Solución de problemas comunes

| Problema | Causa probable | Solución |
|---|---|---|
| No llega el correo de verificación | Filtro antispam o dominio bloqueado | Revisar carpeta spam, esperar unos minutos, o registrarse con otro proveedor de correo. |
| El reset de contraseña no responde | El usuario aún no fue activado | Confirmar primero el correo de verificación inicial; luego solicitar el reset. |
| `CPF1107 - Password not correct for user profile` | Contraseña mal escrita o expirada | Revisar mayúsculas, idioma del teclado y, si persiste, hacer otro reset. |
| `CPF1120 - User does not exist` | El usuario aún no fue creado por el sistema | PUB400 puede tardar minutos en provisionar el perfil; reintentar. |
| El emulador no conecta (timeout) | Bloqueo de red, firewall o antivirus | Validar acceso a `pub400.com:23` desde otra red, o probar con puerto `992`. |
| Login bloqueado tras varios intentos | El perfil se desactivó por intentos fallidos | Esperar y volver a hacer **Reset password** desde la web. |
| `*USRPRF` desactivado por inactividad | Cuenta sin uso por mucho tiempo | Volver a registrar o solicitar reset; PUB400 reactiva el perfil. |
| Errores al guardar objetos por almacenamiento lleno | Se superaron los 250 MB asignados | Limpiar objetos no usados en tus librerías y archivos del IFS. |

## 10. Checklist final

- [ ] IBM i Access Client Solutions instalado y funcional.
- [ ] Cuenta PUB400 registrada con correo personal.
- [ ] Correo de verificación confirmado.
- [ ] Contraseña temporal recibida vía *Reset password*.
- [ ] Sesión 5250 configurada con sistema `pub400.com` y puerto `23` o `992`.
- [ ] Login exitoso y contraseña personalizada.
- [ ] Acceso validado a librerías propias (`WRKLIB`).
- [ ] (Opcional) Acceso SSH al puerto 2222 verificado.
- [ ] (Opcional) Acceso FTP/SFTP al IFS verificado.
