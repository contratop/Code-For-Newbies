# Indice

- [Indice](#indice)
- [Modificando texto en ficheros](#modificando-texto-en-ficheros)
- [Escribir datos en un archivo](#escribir-datos-en-un-archivo)
  - [OutFile (Escribir en archivo)](#outfile-escribir-en-archivo)
  - [Add-Content (Agregar contenido)](#add-content-agregar-contenido)
    - [Ejemplos de escribir datos en archivos](#ejemplos-de-escribir-datos-en-archivos)
- [Leer datos de un archivo](#leer-datos-de-un-archivo)
  - [Obtener todo el contenido de un archivo](#obtener-todo-el-contenido-de-un-archivo)
  - [Obtener una linea especifica de un archivo](#obtener-una-linea-especifica-de-un-archivo)
    - [Ejemplos de leer datos en un archivo](#ejemplos-de-leer-datos-en-un-archivo)

# Modificando texto en ficheros

Aqui se aprendera como modificar un archivo de texto usando comandos de powershell

# Escribir datos en un archivo

Con estos comandos, se puede escribir dentro de un archivo

## OutFile (Escribir en archivo)

Este SubComando es usado para escribir en un archivo

````powershell
"Hola Mundo" | Out-File -FilePath "C:\Users\Usuario\Desktop\HolaMundo.txt"
````

**Con un operador**

````powershell
"Hola Mundo" > "C:\Users\Usuario\Desktop\HolaMundo.txt"
````

Es mas recomendable usar el operador estando en Windows, pues es mas rapido y no se necesita escribir tanto

## Add-Content (Agregar contenido)

Este SubComando es usado para agregar contenido nuevo a un archivo en lineas nuevas

````powershell
"Adios Mundo" | Add-Content -Path "C:\Users\Usuario\Desktop\HolaMundo.txt"
````

**Con un operador**

````powershell
"Adios Mundo" >> "C:\Users\Usuario\Desktop\HolaMundo.txt"
````

### Ejemplos de escribir datos en archivos

En este ejemplo, se va a escribir multiples lineas con un solo comando

````powershell
"Soy la linea 0" > "C:\Users\Usuario\Desktop\HolaMundo.txt"
"Soy la linea 1" >> "C:\Users\Usuario\Desktop\HolaMundo.txt"
"Soy la linea 2" >> "C:\Users\Usuario\Desktop\HolaMundo.txt"
"Soy la linea 3" >> "C:\Users\Usuario\Desktop\HolaMundo.txt"
"Soy la linea 4" >> "C:\Users\Usuario\Desktop\HolaMundo.txt"
````

Se han escrito 5 lineas en varios comandos

Tambien se puede hacer en un solo comando si se vuelca una variable que tenga multiples expresiones

````powershell
$Lineas = "Soy la linea 0", "Soy la linea 1", "Soy la linea 2", "Soy la linea 3", "Soy la linea 4"
$Lineas > "C:\Users\Usuario\Desktop\HolaMundo.txt"
````

Este comando anterior, reemplaza todo el contenido de HolaMundo.txt

Para no reemplazar el contenido, sino añadirlo, se usan los operadores `>>`

````powershell
$Lineas >> "C:\Users\Usuario\Desktop\HolaMundo.txt"
````

---

# Leer datos de un archivo

Con estos comandos, se pueden leer datos de un archivo

## Obtener todo el contenido de un archivo

Este comando es usado para obtener todo el contenido de un archivo

````powershell
Get-Content -Path "C:\Users\Usuario\Desktop\HolaMundo.txt"
````

Se puede guardar todo el contenido de un archivo, en una variable

````powershell
$Contenido = Get-Content -Path "C:\Users\Usuario\Desktop\HolaMundo.txt"
````

## Obtener una linea especifica de un archivo

Este comando es usado para obtener una linea especifica de un archivo

````powershell
Get-Content -Path "C:\Users\Usuario\Desktop\HolaMundo.txt" | Select-Object -Index 2
````

**Recuerda**: El indice de las lineas empieza desde 0

Si se quiere obtener la linea 3, se debe poner el indice 2

### Ejemplos de leer datos en un archivo

Imaginemos el siguiente escenario

Tengo un archivo, que tiene 5 lineas

````powershell
Variable1
Variable2
Variable3
Variable4
Variable5
````

Imaginemos, que quiero obtener la Variable5 y guardarla en la variable $var5

````powershell
$var5 = Get-Content -Path "C:\Users\Usuario\Desktop\HolaMundo.txt" | Select-Object -Index 4
````

En la variable 5, se guardara la linea 5 del archivo (Que es el Index 4)

---
