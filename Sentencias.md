# Indice
- [Sentencias](#sentencias)
    + [Caracteristicas de una condicion afirmativa](#caracteristicas-de-una-condicion-afirmativa)
    + [Caracteristicas de una condicion negativa](#caracteristicas-de-una-condicion-negativa)
  * [Sentencias IF](#sentencias-if)
    + [Aclaraciones](#aclaraciones-8)
  * [Sentencias ELSEIF](#sentencias-elseif)
    + [Aclaraciones](#aclaraciones-9)
  * [Sentencias ELSE](#sentencias-else)
    + [Aclaraciones](#aclaraciones-10)
  * [Invertir una condicion](#invertir-una-condicion)
  * [Ejemplos de sentencias](#ejemplos-de-sentencias)
    + [Ejemplo correcto](#ejemplo-correcto)
    + [Ejemplo incorrecto](#ejemplo-incorrecto)
    + [Otro ejemplo incorrecto](#otro-ejemplo-incorrecto)
  * [Comparadores para sentencias](#comparadores-para-sentencias)
    + [Comparadores de igualdad](#comparadores-de-igualdad)
      - [Comparador -eq](#comparador--eq)
      - [Comparador -ne](#comparador--ne)
      - [Comparador -gt](#comparador--gt)
      - [Comparador -ge](#comparador--ge)
      - [Comparador -lt](#comparador--lt)
      - [Comparador -le](#comparador--le)
    + [Comparadores de coincidencia](#comparadores-de-coincidencia)
      - [Comparador -like](#comparador--like)
      - [Comparador -match](#comparador--match)
      - [Comparador -notmatch](#comparador--notmatch)
    + [Comparadores de contencion](#comparadores-de-contencion)
      - [Comparador -contains](#comparador--contains)
      - [Comparador -notcontains](#comparador--notcontains)
    + [Comparadores de tipo](#comparadores-de-tipo)
      - [Comparador -is](#comparador--is)
      - [Comparador -isnot](#comparador--isnot)


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

---

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
Es el comparador para comparar si dos variables o valores son iguales, pero usando comodines
```
if("manolito" -like "mano*"){
    Write-Host "El comparador devuelve TRUE"
}
elseif("manolito -like "mano?ito"){
    Write-Host "El comparador devuelve TRUE
}
```
#### Comparador -match
Es el comparador para comprobar si la cadena de texto A coincide con alguna parte de la cadena de texto B
```
if("pepito" -match "pep"){
    Write-Host "El comparador devuelve TRUE"
}
```
#### Comparador -notmatch
Es el comparador para comprobar si la cadena de texto A no coincide con ninguna parte de la cadena de texto B
```
if("pepito" -notmatch $var2){
    Write-Host "La variable 1 no coincide con el fragmento de la variable 2"
}
```
### Comparadores de contencion
#### Comparador -contains
Es el comparador para comprobar si la variable A contiene la variable B

Se usa en variables que contienen varios elementos (Variables de varias expresiones)
```
$var1 = "Manzana", "Pera", "Sandia"

if($var1 -contains "Pera"){
    Write-Host "El comparador nos devuelve TRUE"
}
```
#### Comparador -notcontains
Es lo contrario al comparador -contains
```
$var1 = "Manzana", "Pera", "Sandia"

if($var1 -notcontains "Cachopo de cerdo"){
    Write-Host "El Comparador nos devuelve true"
}
```
### Comparadores de tipo
#### Comparador -is
Es el comparador para comprobar si la variable A es del tipo solicitado
```
$var1 = "Hola Mundo"

if($var1 -is [string]){
    Write-Host "La variable es de tipo String por lo que el comparador nos devuelve TRUE"
}
```
#### Comparador -isnot
Es lo mismo que lo anterior, pero al reves
```
$var1 = "Hola Mundo"

if($var1 -isnot [string]){
    Write-Host "La variable no es de tipo String por lo que el comparador nos devuelve TRUE"
}
```

