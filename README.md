# Automatización de Tareas con PowerShell

Este script automatiza la consulta y manipulación de datos provenientes de un archivo CSV, generando una consulta SQL y guardándola en un archivo de texto.

## Descripción

El script realiza las siguientes tareas:
1. Configura la política de ejecución para permitir scripts firmados.
2. Define una consulta SQL base.
3. Importa un archivo CSV con datos.
4. Filtra los números de celular (`NUM_CELULAR`) de los registros en el archivo CSV.
5. Genera una consulta SQL completa concatenando los números de celular.
6. Guarda la consulta en un archivo de texto.
7. Realiza operaciones adicionales como validación de tipos de datos y formatos.
