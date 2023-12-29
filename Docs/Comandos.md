# Indice

- [Indice](#indice)
- [Comandos](#comandos)
- [SubComandos](#subcomandos)
  - [Parametro -Verbose](#parametro--verbose)
- [Get-Help](#get-help)
  - [Importante](#importante)
- [Start-Sleep](#start-sleep)
  - [Start-Proccess](#start-proccess)
- [Get-Date](#get-date)
- [Change-Directory](#change-directory)
- [Get-ChildItem](#get-childitem)
- [Test-Path](#test-path)
- [Get-Content](#get-content)
- [Remove-Item](#remove-item)
- [New-Item](#new-item)
- [Set-Clipboard & Get-Clipboard](#set-clipboard--get-clipboard)

# Comandos

Los comandos realizan cierta funcion en el sistema, estos pueden ser ejecutados desde la terminal o desde un script.

Se puede usar la terminal para depurar una linea de codigo, tan solo escribiendola en la terminal, arroja el resultado de la misma.

Las variables y sentencias tambien son comandos, por lo que se puede usar la terminal para depurar scripts.

---

# SubComandos

Los SubComandos modifican el comportamiento del comando principal, por ejemplo

````powershell
write-host "Hola Mundo" | Out-File "C:\Users\Public\Documents\HolaMundo.txt"
````

En este caso, el SubComando Out-File modifica el comportamiento del comando Write-Host, en lugar de mostrar el resultado en la terminal, lo guarda en un archivo.

---

## Parametro -Verbose

La gran mayoria de comandos, permite ejecutarse con el parametro -Verbose, el cual muestra informacion adicional durante la ejecuccion del comando.

Si por ejemplo, queremos eliminar un directorio, podemos usar el comando Remove-Item, con el parametro -Verbose, nos muestra todas las operaciones en directo que esta realizando el sistema

````powershell
Remove-Item -Path C:\Users\Usuario\Documents\Directorio -Verbose
````

---

# Get-Help

Este comando muestra la ayuda de un comando, Es muy util para profundizar sobre un comando en concreto y sacar mas funciones de la misma.

````powershell
Get-Help Start-Sleep
````

## Importante

Si el comando Get-Help no funciona correctamente, es posible que se requiera actualizar toda la documentacion de ayuda de los comandos, para ello se debe ejecutar el siguiente comando:

````powershell
Update-Help
````

Lo recomendable para buscar ayuda es usar el siguiente comando

````powershell
Get-Help "comando" -Online
````

De esta forma, se abre el navegador con la documetacion del comando en linea.

---

# Start-Sleep

Es un comando que permite pausar la ejecucion del script por un tiempo determinado.

````powershell
Start-Sleep -Seconds 5
````

En este caso, se pausa la ejecuccion del script por 5 segundos.

---

## Start-Proccess

Es un comando que permite ejecutar un programa desde el script.

````powershell
Start-Process -FilePath "C:\Windows\notepad.exe"
````

Es muy util si se combina con modificadores o "parametros"

Si por ejemplo, queremos ejecutar el programa con argumentos:

````powershell
Start-Process -FilePath "C:\Windows\notepad.exe" -ArgumentList "C:\Users\Usuario\Desktop\Archivo.txt"
````

Tambien el propio Start-Process tiene sus parametros.

Si por ejemplo, queremos que el codigo espere a que el programa se cierre para continuar con la ejecucion del script:

````powershell
Start-Process -FilePath "C:\Windows\notepad.exe" -Wait
````

Este parametro -Wait, pausa la ejecucion del script hasta que el programa se cierre.

---

# Get-Date

Es un comando que permite obtener la fecha y hora actual.

````powershell
Get-Date
````

Si se desea obtener la fecha y hora actual en un formato determinado, se puede usar el parametro -Format

````powershell
Get-Date -Format "dd/MM/yyyy HH:mm:ss"
````

---

# Change-Directory

Es un comando que permite cambiar de directorio.

````powershell
Change-Directory "C:\Users\Usuario\Desktop"
````

Se pueden usar trucos para ir directamente a la carpeta del usuario actual, por ejemplo:

````powershell
Change-Directory $HOME
````

Se puede usar el comando Get-Location para obtener la ruta actual.

````powershell
Get-Location
````

O tambien la variable especial $PWD

````powershell
$PWD
````

---

# Get-ChildItem

Es un comando que permite obtener los archivos y carpetas de un directorio.

````powershell
Get-ChildItem
````

Con el comando anterior, obtendremos los archivos y carpetas del directorio actual donde se este ejecutando el Script.

Si se desea obtener los archivos y carpetas de un directorio en especifico, se puede usar el parametro -Path

````powershell
Get-ChildItem -Path "C:\Users\Usuario\Desktop"
````

---

# Test-Path

Es un comando que permite verificar si un archivo o carpeta existe.

````powershell
Test-Path "C:\Users\Usuario\Desktop\Archivo.txt"
````

Si existe, nos devuelve True, si no existe, nos devuelve False.

Podemos usarla en comparadores de sentencias, por ejemplo:

````powershell
if(Test-Path "$HOME\Desktop\Archivo.txt"){
        Write-Host "El archivo existe"
    }else{
        Write-Host "El archivo no existe"
    }
````

---

# Get-Content

Es un comando que permite obtener el contenido de un archivo.

````powershell
Get-Content "C:\Users\Usuario\Desktop\Archivo.txt"
````

Nos devuelve todo el contenido del archivo, en consola.

---

# Remove-Item

Este comando permite eliminar archivos y carpetas.

````powershell
Remove-Item "C:\Users\Usuario\Desktop\Archivo.txt"
````

Si se desea eliminar una carpeta, se debe usar el parametro -Recurse

````powershell
Remove-Item "C:\Users\Usuario\Desktop\Carpeta" -Recurse
````

Si se desea eliminar definitivamente el/los elementos de forma eficaz, se debe usar el parametro -Force

````powershell
Remove-Item "C:\Users\Usuario\Desktop\Archivo.txt" -Force
````

---

# New-Item

Con este comando, se pueden crear archivos en blanco, similar al comando Touch en Linux.

````powershell
New-Item "C:\Users\Usuario\Desktop\Archivo.txt"
````

Si se desea crear una carpeta, se debe usar el parametro -ItemType Directory

````powershell
New-Item "C:\Users\Usuario\Desktop\Carpeta" -ItemType Directory
````

---

# Set-Clipboard & Get-Clipboard

Permite modificar y obtener el contenido del portapapeles.

````powershell
Set-Clipboard "Hola Mundo"
Get-Clipboard
````

Tambien se puede usar como SubComando

````powershell
$test = "Hola Mundo"
$test | Set-Clipboard
get-clipboard
````
