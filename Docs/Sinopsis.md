# Indice

- [Indice](#indice)

# Explicacion de Sinopsis en codigo

Al inicio de nuestro archivo .ps1, se puede especificar una ayuda de como usar el codigo, que lo leera la canalizacion de la consola, esta ayuda integrada en codigo, se llama "Sinopsis" y se puede ver en la consola con el comando "Get-Help" y el nombre del archivo .ps1, por ejemplo:

````powershell
Get-Help .\MiScript.ps1
````

# Codigo de ejemplo de Sinopsis

````powershell
function ejemplodefuncion {

<#
.SYNOPSIS
    Un resumen breve de lo que hace el script

.DESCRIPTION
    Una descripcion mas detallada de lo que hace el script

.PARAMETER ComputerName
    Una explicacion breve de este parametro

.PARAMETER Credential
    Una explicacion breve de este parametro
.EXAMPLE
     Get-MrAutoStoppedService -ComputerName 'Server1', 'Server2'

.EXAMPLE
     'Server1', 'Server2' | Get-MrAutoStoppedService

.EXAMPLE
     Get-MrAutoStoppedService -ComputerName 'Server1' -Credential (Get-Credential)

.INPUTS
    String

.OUTPUTS
    PSCustomObject

.NOTES
    Author:  ContratopDev
    Website: http://github.com/contratop
    Y algunos creditos mas
#>

    [CmdletBinding()]
    param (

    )

    #Function Body

}
````
