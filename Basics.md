# Snippets Basicos
Snippets basicos y explicaciones para iniciados en PowerShell
## Indice:

WORK IN PROGRESS (WIP) - NO TOCAR

---
# Anotaciones / Comentarios
```
# Comentario de una linea
```

```
 <# Comentario de multiples lineas #> 
```

Los comentarios no se ejecutan, son solo para documentar el codigo y/o para organizarse

---

# Imprimir en pantalla

## Escribir algo en consola
Puedes imprimir lo que quieras con Write-Host

```
Write-Host "Hola Mundo"
```
## Escribir variables

```
write-Host "$variable"
```
si el contenido de la variable es ```` $variable = "pepito" ````
Entonces el Write-Host anterior nos mostrara "Pepito"

## Personalizar color y fondo del texto

```
Write-Host "Hola Mundo" -ForegroundColor Red -BackgroundColor Blue
```

En este caso, el texto "Hola Mundo" aparecera en rojo sobre fondo azul

## Imprimir varios Write-Host en una sola linea

```
Write-Host "Hola" -NoNewLine
Write-Host " Mundo"
```

En este caso, el texto "Hola" aparecera en la misma linea que "Mundo"
Por lo que pondria "Hola Mundo"

---

# Variables
Las variables son un espacio de memoria donde se almacena un valor, el cual puede ser de cualquier tipo (texto, numero, fecha, etc)

Las variables se declaran con el signo de $ y se puede usar con todo tipo de elementos

## Variable tipo String
Es una variable que almacena una cadena de texto
```
$var1 = "Hola Mundo"
```
## Variable tipo numerico
Esta variable almacena un numero

Se procesa como un numero, por lo que no se puede sumar texto a un numero
```
$var2 = 1
```

## Variable numerica procesada como String
Estas variables son numeros pero se procesan como texto
```
$var3 = "1"
```
### Aclaraciones:
El string siempre va acompañado entre comillas, ya sean simples (') o dobles (")

Cuando hablamos de String, es una expresion en formato de texto, por ejemplo: "Hola Mundo"

Un nuero, puede estar en formato numerico (1) o en formato texto ("1")

## Variable de tipo Booleano
Esta variable almacena un valor booleano, es decir, verdadero o falso

```
$booleano = $true
```
### Aclaraciones
El valor booleano se declara con $true o $false

Cuando hablamos de un valor Booleano (Boolean), es una espresion que puede ser verdadera o falsa

Es como un interruptor que puede estar en ON o OFF

## Variable con valor de comando
Esta variable almacena el resultado de un comando

```
$command = Get-Process
```
### Aclaraciones
El comando se ejecuta y se almacena en la variable

Puede ser cualquier comando de PowerShell o comando del Sistema Operativo donde se este ejecutando el Script

## Variable con objetos (Variables Array)
Esta variable almacena uno o mas objetos

```
$objects = @{nombre="pepito";edad=20}
```
### Aclaraciones
Es como tener un conjunto de variables dentro de otra variable

Los objetos se declaran con @{}

Pueden ser de cualquier tipo, como por ejemplo: String, numerico, booleano, etc

De esta manera, se puede llamar a la variable y a su objeto, por ejemplo: $objects.nombre

Si se llama a una variable sin hacer target a un objeto, se mostrara todo el contenido de la variable en bruto

## Variable con objetos dentro de objetos (Array dentro de Array)
Estas variables almacenan objetos dentro de objetos

```
$objects = @{nombre="pepito";edad=20;hobbies=@{hobbie1="futbol";hobbie2="natacion"}}
```
### Aclaraciones
Es como tener un conjunto de variables dentro de otra variable, y dentro de esa variable, otra variable con un conjunto de variables

Los objetos se declaran con @{} y un objeto dentro de otro es @{@{}}

Se puede encadenar objetos dentro de otros objetos dentro de otros objetos, etc

Para llamar por ejemplo, el contenido de hobbie1, se debe hacer de la siguiente manera: ``` $objects.hobbies.hobbie1 ```

## Variable con un Prompt
Esta variable almacena el resultado de un Prompt

```
$Prompt = Read-Host "Escribe tu nombre"
```
### Aclaraciones
El Prompt se ejecuta y se almacena en la variable

El valor que el usuario introduzca, se va a guardar en la variable $prompt (Como String si es texto, o como numeral si es numerico (sin comillas))

## Datos de una variable a otra variable
Se puede pasar el contenido de una variable a otra variable

```
$var1 = $var2
```
Tambien se puede guardar el dato de una variable de otra variable que sea Array

```
$var1 = $var2.nombre
```
## Variables que guardan una operacion
Estas variables almacenan el resultado de una operacion matematica

```
$resultado = 1 + 1
```
La variable resultado en este caso, vale 2
### Aclaraciones
El sistema realiza la operacion matematica y guarda el resultado en la variable

Puede ser cualquier operacion matematica, como por ejemplo: +, -, *, /, etc

Es recomendable hacer operaciones matematicas solo con variables numericas

tambien se puede hacer operaciones con variables que ya contengan un valor numerico, como por ejemplo, a continuacion:


```
$resultado = $numero1 + $numero2
```
Si el valor de $primernumero es un 4, y el valor de $segundonumero es un 3, el resultado de la operacion sera 7

## Variables con valor nulo
Estas variables no tienen valor asignado

```
$nulo = $null
```
### Aclaraciones
El valor nulo se declara con $null

El valor null se considera como un valor negativo (false) en el momento de comparar variables

---
# Sentencias
Las sentencias es una forma de ramificar el codigo donde puede hacer varios resultados

### Caracteristicas de una condicion afirmativa
- Si la condicion devuelve $true
- Si la condicion existe con cualquier String o numero
    - Siempre que no se compare con otro elemento
- Si la condicion con su comparador, devuelve $true
    - Ejemplo: $var1 -eq $var2 (Si var1 es igual a var2)

### Caracteristicas de una condicion negativa
- Si la condicion devuelve $false
- Si la condicion no existe
    - Siempre que no se compare con otro elemento
- Si la condicion con su comparador, devuelve $false
    - Ejemplo: $var1 -eq $var2 (Si var1 no es igual a var2)

## Sentencias IF
Es la sentencia inicial al momento de ramificar el codigo

```
if(CONDICION){
    CODIGO A EJECUTAR SI LA CONDICION DEL IF ES VERDADERA
}
```
### Aclaraciones
El IF se va a ejecutar si se comple con la condicion en afirmativa

De lo contrario, no se va a ejecutar nada (Va a omitir este IF)

## Sentencias ELSEIF
En caso de que el IF no se cumpla, pasa al ELSEIF, comparando una nueva condicion (especificada en el ELSEIF)

```
if(CONDICION){
    CODIGO A EJECUTAR SI LA CONDICION DEL IF ES VERDADERA
}
elseif(CONDICION){
    CODIGO A EJECUTAR SI LA CONDICION DE ELSEIF ES VERDARERA
}
```
### Aclaraciones
Se puede anidar tantos ELSEIF como se desee

Solo se puede poner ELSEIF si hay un IF antes

## Sentencias ELSE
En caso de que el IF y los ELSEIF no se cumplan, pasa al ELSE, ejecutando el codigo que se encuentre dentro

```
if(CONDICION){
    CODIGO A EJECUTAR SI LA CONDICION DEL IF ES VERDADERA
}
elseif(CONDICION){
    CODIGO A EJECUTAR SI LA CONDICION DE ELSEIF ES VERDARERA
}
else{
    CODIGO A EJECUTAR SI NINGUNA CONDICION ES VERDADERA
}
```
### Aclaraciones
Solo se puede poner ELSE si hay un IF antes

EL ELSE no lleva ninguna condicion, solo se ejecuta en caso de que todas las condiciones del IF y los ELSEs no se cumlan

## Invertir una condicion
Se puede invertir una condicion, para que se cumpla cuando la condicion sea negativa

```
if(-not(CONDICION)){
    CODIGO A EJECUTAR SI LA CONDICION DEL IF ES FALSA
}
```
Lo mismo se aplica para el ELSEIF

## Ejemplos de sentencias
### Ejemplo correcto
```
$ejemplo = 1

if($ejemplo -eq 1){
    Write-Host "El valor de la variable es 1"
}
elseif($ejemplo -eq 2){
    Write-Host "El valor de la variable es 2"
}
else{
    Write-Host "El valor de la variable no es 1 ni 2"
}
```
Este ejemplo muestra una forma correcta de emplear IF, ELSEIF y ELSE

### Ejemplo incorrecto
```
elseif($ejemplo -eq 1){
    Write-Host "El valor de la variable es 1"
}
else{
    Write-Host "El valor de la variable no es 1"
}
```
Este ejemplo es incorrecto porque no hay un IF antes del ELSEIF
### Otro ejemplo incorrecto
```
else(<#condicion#>){
    write-host "Hola Mundo"
}
```
Este ejemplo es incorrecto porque no hay un IF antes del ELSE

Ademas, el ELSE no puede llevar una condicion dentro de los parentesis, puesto que el ELSE no compara nada

## Comparadores para sentencias
### Comparadores de igualdad
#### Comparador -eq
Es el comparador para comparar si dos variables o valores son exactamente iguales
```
if($var1 -eq $var2){
    Write-Host "Las variables son iguales"
}
```
#### Comparador -ne
Es el comparador para comparar si dos variables o valores son totalmente diferentes
```
if($var1 -ne $var2){
    Write-Host "Las variables son diferentes"
}
```
#### Comparador -gt
Es el comparador (Mayor que)
```
if($var1 -gt $var2){
    Write-Host "La variable 1 es mayor que la variable 2"
}
```
#### Comparador -ge
Es el comparador (Mayor o igual que)
```
if($var1 -ge $var2){
    Write-Host "La variable 1 es mayor o igual que la variable 2"
}
```
#### Comparador -lt
Es el comparador (Menor que)
```
if($var1 -lt $var2){
    Write-Host "La variable 1 es menor que la variable 2"
}
```
#### Comparador -le
Es el comparador (Menor o igual que)
```
if($var1 -le $var2){
    Write-Host "La variable 1 es menor o igual que la variable 2"
}
```
### Comparadores de coincidencia
#### Comparador -like

Work in progress (WIP) - No Tocar






