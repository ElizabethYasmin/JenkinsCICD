# JenkinsCICD

## Creamos un piepeline en Jenkins 
New Item

Ingresamos la opcion de Script SCM
Colocamos nuestro link de repositorio en donde dice URL
Generamos una contraseña para tener acceso a nuestro repositorio
Cambiamos la opcion de rama por la que tenemos en nuestro github (En este caso es Yasmin)
Y por ultimo le damos SAVE
Y el paso mas importante es ir a Gacamole y colocar el siguiente comando
```
apk update && apk add git curl curl-dev jq python3 docker docker-compose

```
Y Por ultimo darle a la opcion Build now (conicono de play)

