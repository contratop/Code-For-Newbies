# Indice

- [Indice](#indice)
- [Funciones](#funciones)
  - [Función basica](#función-basica)
  - [Funcion con parametros](#funcion-con-parametros)
    - [Parametro Basico](#parametro-basico)
    - [Parametros con requisitos](#parametros-con-requisitos)
    - [Parametros Mandatory](#parametros-mandatory)
    - [Parametros con valor por defecto](#parametros-con-valor-por-defecto)
    - [Funciones avanzadas](#funciones-avanzadas)

# Funciones

Las funciones es una forma de agrupar código para que sea más fácil de leer y **reutilizar**. Las funciones pueden recibir parámetros y devolver valores.

---

## Función basica

A continuacion se muestra como se declara una funcion basica en PowerShell

```powershell
function NombreDeLaFuncion {
    # Codigo de la funcion
}
```

Esta funcion, es una de las mas basicas, no recibe parametros y no **suele** devolver ningun valor.

---

## Funcion con parametros

Las funciones tambien pueden recibir parametros, para ello se declaran dentro de los parentesis de la funcion.

```powershell
function NombreDeLaFuncion {
    param($test)
    if($test){
        write-host "Has escrito en el parametro 1: $test"
    }
    else{
        Write-host "Has ejecutado la funcion sin escribir parametros
    }
}
```

**Nota importante**: Los parametros

---

### Parametro Basico

Una funcion con un parametro basico, es una funcion que recibe un parametro como String para luego mostrarlo o usarlo dentro de la funcion.

```powershell
function NombreDeLaFuncion {
    param($test)
    # Codigo de la funcion
}
```

---

### Parametros con requisitos

Las funciones tambien pueden tener parametros con requisitos, para ello se declaran dentro de los corchetes de la funcion.

```powershell
function NombreDeLaFuncion {
    param(
        [string]$test
    )
    # Codigo de la funcion
}
```

En este caso, la funcion solo aceptara parametros de tipo String.

Tambien podemos poner el ejemplo con datos Booleanos

```powershell
function NombreDeLaFuncion {
    param(
        [bool]$test
    )
    
    if($test){
        write-host "El parametro es True
    }
    elseif(!$test){
        write-host "El parametro es False
    }
    else{
        Write-host "No has especificado el parametro"
    }
}
```

---

### Parametros Mandatory

Los parametros Mandatory son parametros que son obligatorios para ejecutar la funcion, para ello se declaran dentro de los corchetes de la funcion.

```powershell
function NombreDeLaFuncion {
    param(
        [Parameter(Mandatory=$true)]
        [string]$test
    )
    # Codigo de la funcion
}
```

Si te fijas, en el ejemplo anterior se ha puesto una modificacion de parametros, estando el valor Mandatory en True, obligara al usuario a establecer un parametro en $test, en este caso, en formato String

---

### Parametros con valor por defecto

Los parametros con valor por defecto, son parametros que no son obligatorios para ejecutar la funcion, pero si no se especifica un valor, se usara el valor por defecto, para ello se declaran dentro de los corchetes de la funcion.

```powershell
function NombreDeLaFuncion {
    param(
        [Parameter(Mandatory=$false)]
        [string]$test = "Valor por defecto"
    )
    # Codigo de la funcion
}
```

---

### Parametros con opciones predefinidas

Con este modificador de parametros, se puede coneguir que solo admita X objetos predefinidos, es decir, un set de objetos validos

```powershell
function NombreDeLaFuncion {
    param(
        [ValidateSet("Objeto1", "Objeto2")]
        [string]$Parametro
    )
}
```

En este caso, solo sera valido para ese parametro "Objeto1" y "Objeto2"

---

### Funciones avanzadas

A veces no podras realizar ciertas funciones porque requiere elementos C# o .NET, para ello se pone un modificador que hace que la funcion sea mas avanzada.

```powershell
function NombreDeLaFuncion {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$false)]
        [string]$test = "Valor por defecto"
    )
    # Codigo de la funcion
}
```

En este caso, el modificador CmdletBinding() hace que la funcion sea mas avanzada, y pueda usar elementos C# o .NET

---
