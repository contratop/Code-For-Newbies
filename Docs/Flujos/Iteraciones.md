# Indice

- [Indice](#indice)
- [Flujos](#flujos)
  - [Switch](#switch)
  - [While](#while)
  - [For](#for)
  - [Foreach](#foreach)

# Flujos

Gracias a los flujos, controlamos como se ejecuta nuestro codigo PowerShell.

Las sentencias es un tipo de flujo, una vez aprendidas las sentencias, podemos continuar al resto de flujos que tambien son importantes.

## Switch

El switch es un flujo que nos permite ejecutar un bloque de codigo dependiendo de la condicion que le pasemos.

```powershell
$numero = read-host "Introduce un numero"
switch ($numero) {
    1 { Write-host "El numero es 1" }
    2 { Write-host "El numero es 2" }
    3 { Write-host "El numero es 3" }
    default { Write-Warning "El numero no es 1, 2 o 3" }
}
```

Como podemos comprobar, la opcion default es cuando no se cumple ninguna de las anteriores.

Las opciones no tienen porque ser numeros, pueden ser strings tambien

---

## While

El while es un bucle que se repite siempre que la condicion sea verdadera

```powershell
$while = $true
while ($while) {
    write-host "Me repito"
}
```

Ejecutando algo tan sencillo como el codigo anterior, nos encontramos con un bucle infinito, ya que la condicion siempre es verdadera.

A continuacion otro ejemplo con un while que se puede parar

```powershell
$while = $true
while ($while) {
    write-host "Me repito"
    $pregunta = read-host "Quieres seguir repitiendote? (s/n)"
    if ($while -eq "n") {
        $while = $false
    }
}
```

Cuando la variable que se usa como comparador, nos devuelve un valor que no es verdadero, el bucle se para.

La forma mas controlada de hacer bucles es con ```` $while = $true y $while = $false ````

Pero se puede usar todo tipo de comparadores.

## For

El flujo FOR es un bucle que se repite un numero de veces que le indiquemos.

```powershell
for ($i = 0; $i -lt 10; $i++) {
    write-host "Me repito"
    write-host "Vuelta numero $i"
}
```

En este caso, el bucle se repite 10 veces, ya que la variable ````$i```` empieza en 0, y se repite mientras sea menor que 10, y en cada vuelta, se le suma 1 a la variable ````$i````

Descomponiendo los parametros fe FOR, tenemos:

- ````$i = 0````: Inicializamos la variable ````$i```` a 0
- ````$i -lt 10````: Mientras ````$i```` sea menor (-lt) que 10, se repite el bucle
- ````$i++````: En cada vuelta, se le suma 1 a la variable ````$i````

---

## Foreach

El flujo FOREACH es un bucle que se repite un numero de veces que le indiquemos, pero en este caso, se repite por cada elemento de una lista.

```powershell
$lista = "elemento1", "elemento2", "elemento3"
foreach ($elemento in $lista) {
    write-host "El elemento es $elemento"
}
```

En este caso, el bucle se repite 3 veces, ya que la variable ````$lista```` tiene 3 elementos, y en cada vuelta, la variable ````$elemento```` toma el valor de cada elemento de la lista.

Con `FOREACH` podemos usar `continue` para saltarnos la iteracion actual, y `break` para salir del bucle.

---



