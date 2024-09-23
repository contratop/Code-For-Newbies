# Indice

- [Indice](#indice)
- [Datos en red](#datos-en-red)
  - [Invoke-WebRequestç](#invoke-webrequestç)
  - [Invoke-RestMethod](#invoke-restmethod)

# Datos en red

Aqui se va a aprender a controlar datos en red en PowerShell

## Invoke-WebRequest

Con este comando podemos descargar datos de internet

```powershell
invoke-webrequest -uri https://www.google.com -outfile google.html
```

Con el parametro ``` -uri ``` le indicamos la url de donde queremos descargar los datos

Y con el parametro ``` -outfile ``` le indicamos el nombre del archivo donde queremos guardar los datos

## Invoke-RestMethod

Con este comando podemos descargar datos de internet en formato JSON

Este comando es una forma de usar REST API

```powershell
$resultadoAPI = invoke-restmethod -uri https://jsonplaceholder.typicode.com/posts -method GET
```
