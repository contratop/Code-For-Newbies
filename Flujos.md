# Indice

- [Indice](#indice)
- [Flujos](#flujos)
  - [Switch](#switch)
  - [While](#while)

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
