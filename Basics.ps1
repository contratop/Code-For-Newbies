## Snippets basicos

# Anotaciones / Comentarios
# Comentario de una linea
<# Comentario de multiples lineas #>
# Los comentarios no se ejecutan, son solo para documentar el codigo y para organizarse

###########################################################################
##### IMPRIMIR EN PANTALLA ################################################

# Escribir algo en consola:
# Puedes imprimir lo que quieras con Write-Host

Write-Host "Hola mundo"

# Tambien puedes imprimir el contenido de una variable

write-host "$variable"

# Si el contenido de la variable es "$variable = "pepito"
# Entonces el Write-host anterior, mostrara el texto "pepito" en la consola

# Tambien se puede personalizar el color de la letra y el fondo

write-host "Hola mundo" -foregroundcolor red -backgroundcolor blue

# En este caso el texto "Hola mundo" aparecera en rojo sobre fondo azul

# Tambien, se puede imprimir varios elementos en una misma linea (sin salto de linea)

write-host "Hola" -nonewline
write-host " mundo"

# En este caso, el texto "Hola mundo" aparecera en la misma linea







###########################################################################
##### VARIABLES ###########################################################


# Variables
# Las variables se declaran con el signo de $ y se pueden usar con todo tipo de elementos

$var1 = "Hola mundo" # Esta variable tiene el valor "Hola mundo" ya predefinido (Variable String)
$numerico = 1 # Esta variable tiene el valor 1 ya predefinido (variable numerica)
$numericostring = "1" # Esta variable tiene el valor "1" ya predefinido (variable string)

# Aclaracion: El String siempre va acompañado de comillas, ya sean simples o dobles
# Cuando hablamos de String, es una exepresion en formato de texto, por ejemplo: "Hola mundo"
# Cuando hablamos de numerico, es una expresion en formato numerico, por ejemplo: 1
# Cuando hablamos de String Numerico, es una expresion en formato de texto, pero que contiene un numero, por ejemplo: "1"


$booleano = $true # Esta variable tiene el valor $true ya predefinido (variable booleana)

# Aclaracion: El booleano siempre va acompañado de $true o $false
# Cuando hablamos de booleano, es una expresion que puede ser verdadera o falsa, por ejemplo: $true o $false
# Es como un interruptor que puede estar en ON o OFF


$command = Get-Process # Esta variable tiene el valor de un comando ya predefinido (variable comando)

# Aclaracion: El comando siempre va acompañado de un comando de powershell o de un comando nativo del sistema donde se este ejecutando
# Cuando hablamos de comando, es una expresion que ejecuta una accion, por ejemplo: Get-Process
# Todos los datos de Get-Process se guardan en la variable $command, que puede ser llamado mas adelante

$objects = @(objeto1="hola";objeto2="adios") # Esta variable tiene el valor de un objeto ya predefinido (variable objeto)

# Aclaracion: Es como tener un conjunto de variables dentro de otra variable
# De esta manera, se puede seleccionar el objeto que se quiera
# Si llamamos a la variable $object, nos va a soltar todo el contenido en su interior
# Podemos especificar el objeto que queremos dentro de la variable con: $object.objeto1
# En este caso, nos va a soltar solo el valor de objeto1, que es "hola"

$objectplus = @{objeto1="hola";objeto2="adios";objeto3=@{objeto31="quetal";objeto32="todo bien?"}}
# Esta variable tiene objetos dentro de objetos

# Aclaracion: Es como tener un conjunto de variables dentro de otra variable
# Es como el ejemplo anterior
# Pero en este caso, tenemos objetos dentro de objetos
# Si queremos el contenido de "objeto31", tenemos que llamar a la variable $objectplus.objeto3.objeto31

$prompt = Read-Host "Escribe algo" # Esta variable es un prompt

# Aclaracion: Es como un input
# Cuando se ejecuta el script, nos va a pedir que escribamos algo
# El valor que escribamos se va a guardar en la variable $prompt
# Si queremos que el prompt nos pida algo en especifico, tenemos que ponerlo entre comillas

$variable = $prompt # Esta variable guarda el valor de otra variable

# Aclaracion: Es como tener una variable que guarda el valor de otra variable

$resultado = 1 + 1 # Esta variable guarda el valor de una operacion matematica

# Aclaracion: El sistema realiza la operacion matematica y guarda el resultado en la variable
# Puede ser cualquier operacion matematica, como: +, -, *, /, etc
# Es recomendable hacer operaciones matematicas solo con variables numericas
# tambien se puede hacer operaciones con variables que contengan datos numericos, como en el ejemplo a continuacion

$resultado = $primernumero + $segundonumero

# Si el valor de $primernumero es un 4, y el valor de $segundonumero es un 3
# El resultado de la variable $resultado va a ser un 7

$nulo = $null # Esta variable es un valor nulo

# Aclaracion: Es como un valor vacio
# No contiene ningun dato, por lo que al llamarla, no va a mostrar nada






###########################################################################
##### SENTENCIAS ##########################################################

# Las sentencias es una forma de ramificar el codigo donde puede haber varios resultados

# Caracteristicas de una condicion afirmativa:
# - Si la condicion devuelve $true
# - Si la condicion existe o esta declarada (Osea, que no sea $null)
# - Si la condicion con su comparador, devuelve $true

# Caracteristicas de una condicion negativa:
# - Si la condicion devuelve $false
# - Si la condicion no existe o no esta declarada (Osea, que sea $null)
# - Si la condicion con su comparador, devuelve $false



if(<#condicion#>){
    <#codigo a ejecutar si la condicion es verdadera#>
}

# Aclaracion: El IF se va a ejecutar si se cumple la condicion
# De lo contrario, no se va a ejecutar nada (va a omitir este IF)

elseif(<#condicion#>){
    <#codigo a ejecutar si esta segunda condicion es verdadera#>
}

# Aclaracion: El ELSEIF se va a ejecutar si se cumple la condicion
# Tiene que haber atras al menos un IF para que sea correcto
# Si no se cumple la funcion del IF, va a ir al ELSEIF y va a comprobar si se cumple la condicion
# Si se cumple la condicion, ejecuta el ELSEIF
# de lo contrario no se ejecuta nada

else{
    <#codigo a ejecutar si ninguna condicion es verdadera#>
}

# Aclaracion: El ELSE se va a ejecutar si ninguna de las condiciones anteriores IF y ELSEIFs se cumplieron
# Tiene que ir acompañado de al menos un IF por detras, o un ELSEIF

## TIP & TRICK ##
# Se puede invertir el comparador de una condicion
# Si queremos ejecutar CUANDO LA CONDICION SEA FALSA
# ponemos un (-not) en la condicion

if(-not(<#condicion#>)){
    <#codigo a ejecutar si la condicion es falsa#>
}
# En este caso, se va a ejecutar el codigo si la condicion es negativa


##### EJEMPLOS DE SENTENCIAS ##############################################


#### EJEMPLO CORRECTO ####
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
#############################

# Este codigo de ejemplo, es CORRECTO

# A continuacion, se va a mostrar ejemplos INCORRECTOS

#### EJEMPLO INCORRECTO ####
elseif($ejemplo -eq 1){
    Write-Host "El valor de la variable es 1"
}
else{
    Write-Host "El valor de la variable no es 1"
}
#############################

# El codigo anterior, NO ES CORRECTO
# Motivo, porque no hay un IF antes del ELSEIF

#### OTRO EJEMPLO INCORRECTO ####
else(<#condicion#>){
    write-host "Hola Mundo"
}
#################################

# El codigo anterior, NO ES CORRECTO
# Motivo, porque no hay un IF ni un ELSEIF antes del ELSE
# ADEMAS el ELSE no puede tener una condicion dentro de los parentesis
# El ELSE no puede comparar nada, pues es solo en caso de que todos los demas no se cumplan

########## COMPARADORES para SENTENCIAS ###############################

# Los comparadores son los que nos van a permitir comparar variables y valores
# Si el resultado de la comparacion es correcta, devuelve el valor $true
# de lo contrario, si el resultado de la comparacion es incorrecta, devuelve el valor $false

# Comparadores de igualdad:
# -eq: Igual a
# Tiene que ser exactamente igual los valores A y B para que se cumpla la condicion

if(A -eq B){
    Write-Host "El valor A es igual al valor B"
}

# -ne: Diferente a
# Tiene que ser diferente los valores A y B para que se cumpla la condicion

if(A -ne B){
    Write-Host "E valor A es diferente al valor B"
}

