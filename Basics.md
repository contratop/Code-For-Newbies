## Indice:

- [Snippets Basicos](#snippets-basicos)
- [Anotaciones / Comentarios](#anotaciones---comentarios)
- [Imprimir en pantalla](#imprimir-en-pantalla)
  * [Escribir algo en consola](#escribir-algo-en-consola)
  * [Escribir variables](#escribir-variables)
  * [Personalizar color y fondo del texto](#personalizar-color-y-fondo-del-texto)
  * [Imprimir varios Write-Host en una sola linea](#imprimir-varios-write-host-en-una-sola-linea)
# Snippets Basicos
Snippets basicos y explicaciones para iniciados en PowerShell

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












