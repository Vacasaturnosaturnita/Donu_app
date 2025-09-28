Donu_app

Pasos para abrir y correr el proyecto

Descargar los archivos del repositorio

Entra al botón verde que dice Code en GitHub.

Elige la opción Download ZIP.

Se descargará un archivo comprimido con todos los archivos del proyecto.

Guardar y descomprimir

Mueve el archivo ZIP a una carpeta de tu computadora donde quieras trabajar.

Descomprime el archivo (clic derecho → “Extraer aquí” o “Extraer en Donu_app”).

Te quedará una carpeta con todos los archivos del proyecto.

Abrir en Visual Studio Code

Abre Visual Studio Code.

Ve a File → Open Folder (o “Abrir carpeta”).

Selecciona la carpeta del proyecto que acabas de descomprimir.

Crear un proyecto Flutter nuevo (solo si falla el original)

Si por alguna razón el proyecto no corre directo, primero crea un nuevo proyecto en Flutter con el comando:

flutter create prueba_donut


Luego, copia las carpetas lib/ y assets/ de tu proyecto descargado a este nuevo proyecto (reemplaza las que ya trae).

Configurar las dependencias

Abre la terminal en VS Code.

Asegúrate de estar en la carpeta del proyecto.

Ejecuta:

flutter pub get


Esto descarga todas las librerías necesarias que usa la aplicación.

Ejecutar la aplicación

Conecta un emulador de Android, tu celular o usa el navegador Chrome.

En la terminal escribe:

flutter run


Espera a que compile. Si todo está bien, verás la app corriendo.
https://youtu.be/Qym4dZ_HFAY 
