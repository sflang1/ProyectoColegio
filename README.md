# README

## Proyecto Colegio

### Instalación

  1- En primer lugar, se baja el proyecto desde el repositorio.

  2- Se realiza un ```bundle install```.

  3- En la carpeta del proyecto, copiar o renombrar el archivo .env.example a .env.development

  4- En la carpeta config, se copian los archivos .example a archivos .yml, por ejemplo:

    cp database.yml.example database.yml

  Y así sucesivamente con todos los archivos .yml.example

  4- Se genera una clave para la aplicación mediante el comando ```rails secret```. Este valor debe copiarse y pegarse en el archivo .env.development, donde dice SECRET_KEY_BASE="*Pegar aquí*"

  5- Se crea la base de datos y se corren las migraciones mediante los comandos

    rake db:create
    rake db:migrate

  6- Si todo ha funcionado correctamente, debe poderse correr ```rails server``` y la aplicación comenzará normalmente

<b>Nota: </b> Este programa necesita de la versión de NodeJS especificada en el archivo .node-version. Para el manejo de versiones de Node, se recomienda el uso de [nodenv](https://github.com/nodenv/nodenv).
