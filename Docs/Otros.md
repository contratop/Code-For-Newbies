# Indice
- [Indice](#indice)
- [Throw](#throw)
    - [Ejemplo avanzado de Throw](#ejemplo-avanzado-de-throw)


# Throw
Throw es una forma de lanzar una excepcion y finalizar la ejecuccion del script

```powershell
Throw "Error"
```
Se puede usar directamente como en el ejemplo

### Ejemplo avanzado de Throw
```powershell
function MiFuncion {
    write-host "Ejecutando funcion"
    throw "Ha ocurrido un error"
    write-host "Esta linea no se ejecuta"
}
```
---