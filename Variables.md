# Indice

- [Indice](#indice)
- [Variables](#variables)
  - [Variable tipo String](#variable-tipo-string)
  - [Variable tipo numerico](#variable-tipo-numerico)
  - [Variable numerica procesada como String](#variable-numerica-procesada-como-string)
  - [Variable de tipo Booleano](#variable-de-tipo-booleano)
  - [Variable con valor de comando](#variable-con-valor-de-comando)
  - [Variable con objetos (Variables Array)](#variable-con-objetos-variables-array)
  - [Variable con objetos dentro de objetos (Array dentro de Array)](#variable-con-objetos-dentro-de-objetos-array-dentro-de-array)
  - [Variable con un Prompt](#variable-con-un-prompt)
  - [Datos de una variable a otra variable](#datos-de-una-variable-a-otra-variable)
  - [Variables que guardan una operacion](#variables-que-guardan-una-operacion)
  - [Variables con valor nulo](#variables-con-valor-nulo)
  - [Variables con varias expresiones](#variables-con-varias-expresiones)
  - [Variables Scope (Variables de Ambito)](#variables-scope-variables-de-ambito)
    - [Ejemplo de variable normal](#ejemplo-de-variable-normal)
    - [Ejemplo de variable de Ambito Global](#ejemplo-de-variable-de-ambito-global)
    - [Ejemplo de variable de Ambito Script](#ejemplo-de-variable-de-ambito-script)
  - [Variables especiales](#variables-especiales)
    - [Variables Especiales Booleanas](#variables-especiales-booleanas)
    - [Variables Especiales Null](#variables-especiales-null)
    - [Variables Especial PWD](#variables-especial-pwd)
    - [Variable especial HOME](#variable-especial-home)

# Variables

Las variables son un espacio de memoria donde se almacena un valor, el cual puede ser de cualquier tipo (texto, numero, fecha, etc)

Las variables se declaran con el signo de $ y se puede usar con todo tipo de elementos

---

## Variable tipo String

Es una variable que almacena una cadena de texto

```powershell
$var1 = "Hola Mundo"
```

---

## Variable tipo numerico

Esta variable almacena un numero

Se procesa como un numero, por lo que no se puede sumar texto a un numero

```powershell
$var2 = 1
```

---

## Variable numerica procesada como String

Estas variables son numeros pero se procesan como texto

```powershell
$var3 = "1"
```

**Aclaraciones**::
El string siempre va acompañado entre comillas, ya sean simples (') o dobles (")

Cuando hablamos de String, es una expresion en formato de texto, por ejemplo: "Hola Mundo"

Un nuero, puede estar en formato numerico (1) o en formato texto ("1")

---

## Variable de tipo Booleano

Esta variable almacena un valor booleano, es decir, verdadero o falso

```powershell
$booleano = $true
```

**Aclaraciones**:
El valor booleano se declara con $true o $false

Cuando hablamos de un valor Booleano (Boolean), es una espresion que puede ser verdadera o falsa

Es como un interruptor que puede estar en ON o OFF

---

## Variable con valor de comando

Esta variable almacena el resultado de un comando

```powershell
$command = Get-Process
```

**Aclaraciones**:
El comando se ejecuta y se almacena en la variable

Puede ser cualquier comando de PowerShell o comando del Sistema Operativo donde se este ejecutando el Script

---

## Variable con objetos (Variables Array)

Esta variable almacena uno o mas objetos

```powershell
$objects = @{nombre="pepito";edad=20}
```

Tambien se puede declarar haciendo Target

```powershell
$objects = @{}
$objects.nombre = "pepito"
$objects.edad = 20
```

**Aclaraciones**:
Es como tener un conjunto de variables dentro de otra variable

Los objetos se declaran con @{}

Pueden ser de cualquier tipo, como por ejemplo: String, numerico, booleano, etc

De esta manera, se puede llamar a la variable y a su objeto, por ejemplo: $objects.nombre

Si se llama a una variable sin hacer target a un objeto, se mostrara todo el contenido de la variable en bruto

---

## Variable con objetos dentro de objetos (Array dentro de Array)

Estas variables almacenan objetos dentro de objetos

```powershell
$objects = @{nombre="pepito";edad=20;hobbies=@{hobbie1="futbol";hobbie2="natacion"}}
```

Tambien se puede declarar haciendo Target

```powershell
$objects = @{}
$objects.nombre = "pepito"
$objects.edad = 20
$objects.hobbies = @{}
$objects.hobbies.hobbie1 = "futbol"
$objects.hobbies.hobbie2 = "natacion"
```

**Aclaraciones**:
Es como tener un conjunto de variables dentro de otra variable, y dentro de esa variable, otra variable con un conjunto de variables

Los objetos se declaran con @{} y un objeto dentro de otro es @{@{}}

Se puede encadenar objetos dentro de otros objetos dentro de otros objetos, etc

Para llamar por ejemplo, el contenido de hobbie1, se debe hacer de la siguiente manera: ``` $objects.hobbies.hobbie1 ```

---

## Variable con un Prompt

Esta variable almacena el resultado de un Prompt

```powershell
$Prompt = Read-Host "Escribe tu nombre"
```

**Aclaraciones**:
El Prompt se ejecuta y se almacena en la variable

El valor que el usuario introduzca, se va a guardar en la variable $prompt (Como String si es texto, o como numeral si es numerico (sin comillas))

---

## Datos de una variable a otra variable

Se puede pasar el contenido de una variable a otra variable

```powershell
$var1 = $var2
```

Tambien se puede guardar el dato de una variable de otra variable que sea Array

```powershell
$var1 = $var2.nombre
```

---

## Variables que guardan una operacion

Estas variables almacenan el resultado de una operacion matematica

```powershell
$resultado = 1 + 1
```

La variable resultado en este caso, vale 2
**Aclaraciones**:
El sistema realiza la operacion matematica y guarda el resultado en la variable

Puede ser cualquier operacion matematica, como por ejemplo: +, -, *, /, etc

Es recomendable hacer operaciones matematicas solo con variables numericas

tambien se puede hacer operaciones con variables que ya contengan un valor numerico, como por ejemplo, a continuacion:

```powershell
$resultado = $numero1 + $numero2
```

Si el valor de $primernumero es un 4, y el valor de $segundonumero es un 3, el resultado de la operacion sera

---

## Sumar y restar 1 a una variable numerica

Se puede sumar o restar 1 a una variable numerica

```powershell
$numero = 1
$numero++
```

En este caso, se le suma 1 a la variable $numero

```powershell
$numero = 1
$numero--
```

En este caso, se le resta 1 a la variable $numero

---

## Variables con valor nulo

Estas variables no tienen valor asignado

```powershell
$nulo = $null
```

**Aclaraciones**:
El valor nulo se declara con $null

El valor null se considera como un valor negativo (false) en el momento de comparar variables

---

## Variables con varias expresiones

Estas variables almacenan varias expresiones

```powershell
$var1 = "Manzana" , "Zanahoria" , "Pera"
```

**Aclaraciones**:
Las expresiones se separan con una coma (,)

Las expresiones pueden ser de cualquier tipo, como por ejemplo: String, numerico, booleano, etc

Todas las expresiones se guardaran en la variable target (en este caso $var1)

---

## Variables Scope (Variables de Ambito)

Existen varias formas de declarar variables de Ambito

Estas variables se les llama Variables Scope

A continuacion se pondran varios ejemplos de variables

### Ejemplo de variable normal

```powershell
$var1 = "Hola Mundo"
```

Estas variables son "Variables normales"

Solamente se pueden llamar desde dentro de la misma capa de codigo donde se ejecutan, y por ello, estan muy limitados en codigos mas grandes

### Ejemplo de variable de Ambito Global

```powershell
$global:var1 = "Hola Mundo"
```

Estas variables son "Variables de Ambito Global" o mejor llamado "Scope Global"

Se pueden llamar y estaran disponible durante **Toda la instancia de PowerShell**, Ya sea en el mismo Script, o en otro Script que se ejecute en la misma instancia PowerShell

A diferencia de las variables normales, estas variables son globales, por lo que se le pueden llamar desde cualquier parte del codigo, e incluso desde otros script (Mientras se ejecute en la misma instancia de PowerShell)

### Ejemplo de variable de Ambito Script

```powershell
$script:var1 = "Hola Mundo"
```

Estas variables son "Variables de Ambito Script" o mejor llamado "Scope Script"

Se pueden llamar y estaran disponible solo dentro del propio codigo

A diferencia de las variables normales, estan pueden ser llamadas de forma Multicapa

Y a diferencia de las variables Global, estan solo pueden ser invocadas si estan en el mismo archivo de codigo .ps1

---

## Variables especiales

las variables especiales ya estan declaradas por defecto en PowerShell

Son variables que ayudan a estructurar el flujo del codigo

### Variables Especiales Booleanas

Son dos variables que se usan para declarar el estado True o False

```powershell
$true
$false
```

### Variables Especiales Null

Es una variable que se usa para declarar el valor nulo

```powershell
$null
```

### Variables Especial PWD

Esta variable almacena el directorio actual donde se esta ejecutando el programa
  
  ```powershell
  $pwd
  ```

### Variable especial HOME

Esta variable almacena la ruta hacia el directorio HOME del usuario

```powershell
$home
```

---
