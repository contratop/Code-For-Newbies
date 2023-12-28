#  Ejemplo de implementacion de una API en powershell

Ejemplo de usar una API en metodo GET con Telegram

## Ejemplo de uso basico con metodo GET

```powershell
#Definimos el TOKEN del BOT
$token = "<token>"

# Definimos la URL de la API
$url = "https://api.telegram.org/bot$token/getUpdates"

# Hacemos la peticion GET
$respuesta = Invoke-WebRequest -Uri $url -Method Get

# Convertimos la respuesta en un objeto JSON
$respuesta = $respuesta.Content | ConvertFrom-Json
```

En este caso, estamos usando getUpdates de la API de Telegram, que nos devuelve un JSON con los mensajes que han llegado a nuestro bot.

La documentacion de Bots de Telegram contiene mas informacion sobre los metodos disponibles.

## Ejemplo de uso basico con el metodo POST

Vamos a enviar un mensaje a un chat de telegram con el BOT usando el metodo POST

Primero se construye el JSON con el mensaje que queremos enviar

```powershell
#Definimos el TOKEN del BOT
$token = "<token>"
# Si el token ya esta definido, no es necesario volver a definirlo (Consultar documentacion de Variables
)

# Definimos la URL de la API
$url = "https://api.telegram.org/bot$token/sendMessage"

# Definimos el JSON con el mensaje que queremos enviar
$mensaje = @{
    chat_id = "123456789"
    text = "Hola Mundo"
}

# En este caso, el JSON esta formateado como objetos de Powershell, que podemos manejar de forma mas sencilla

# Creamos la peticion POST
$respuesta = Invoke-WebRequest -Uri $url -Method Post -Body $mensaje
```