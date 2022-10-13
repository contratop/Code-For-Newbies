# Indice

- [Snippets Basicos](#snippets-basicos)
- [Anotaciones / Comentarios](#anotaciones--comentarios)
- [Imprimir en pantalla (Write-Host)](#imprimir-en-pantalla-write-host)
  - [Escribir algo en consola](#escribir-algo-en-consola)
  - [Escribir variables](#escribir-variables)
  - [Personalizar color y fondo del texto](#personalizar-color-y-fondo-del-texto)
  - [Imprimir varios Write-Host en una sola linea](#imprimir-varios-write-host-en-una-sola-linea)
- [Imprimir Alertas (Write-Warning)](#imprimir-alertas-write-warning)
- [Imprimir Errores (Write-Error)](#imprimir-errores-write-error)

# Snippets Basicos

Snippets basicos y explicaciones para iniciados en PowerShell

---

# Anotaciones / Comentarios

```powershell
# Comentario de una linea
```

```powershell
 <# Comentario de multiples lineas #> 
```

Los comentarios no se ejecutan, son solo para documentar el codigo y/o para organizarse

---

# Imprimir en pantalla (Write-Host)

## Escribir algo en consola

Puedes imprimir lo que quieras con Write-Host

Write-Host muestra un texto en la consola

```powershell
Write-Host "Hola Mundo"
```

## Escribir variables

```powershell
write-Host "$variable"
```

si el contenido de la variable es ```` $variable = "pepito" ````
Entonces el Write-Host anterior nos mostrara "Pepito"

## Personalizar color y fondo del texto

```powershell
Write-Host "Hola Mundo" -ForegroundColor Red -BackgroundColor Blue
```

En este caso, el texto "Hola Mundo" aparecera en rojo sobre fondo azul

## Imprimir varios Write-Host en una sola linea

```powershell
Write-Host "Hola" -NoNewLine
Write-Host " Mundo"
```

En este caso, el texto "Hola" aparecera en la misma linea que "Mundo"
Por lo que pondria "Hola Mundo"

---

# Imprimir Alertas (Write-Warning)

Con Write-Warning, se imprime un mensaje de advertencia en la consola

Por defecto, el color del texto es amarillo, y muestra al principio del mensaje "ADVERTENCIA:" en el idioma predeterminado del sistema
  
  ```powershell
  Write-Warning "Algo ha pasado"
  ```

El comando Write-Warning no acepta parametros para modificar el color del texto ni el fondo de la linea.

---

# Imprimir Errores (Write-Error)

Con Write-Error, se imprime un mensaje de error en la consola

Por defecto, el color del texto es rojo, y muestra al principio del mensaje "ERROR:" en el idioma predeterminado del sistema

Ademas, en la consola, se muestra detalles de la linea donde esta invocado el Write-Error, y el codigo de error que se le pasa como parametro
  
  ```powershell
  Write-Error "Algo MUY chungo ha pasado"
  ```

El comando Write-Error no acepta parametros para modificar el color del texto ni el fondo de la linea, pero si acepta un parametro para indicar el codigo de error que se le pasa como parametro

  ```powershell
  Write-Error "Algo MUY chungo ha pasado" -ErrorId 1234
  ```

---
