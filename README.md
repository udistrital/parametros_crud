# parametros_crud

API CRUD para la gestión de información definida por la organización para las entidades de la universidad.

## Especificaciones Técnicas

### Tecnologías Implementadas y Versiones
* [Golang](https://github.com/udistrital/introduccion_oas/blob/master/instalacion_de_herramientas/golang.md)
* [BeeGo](https://github.com/udistrital/introduccion_oas/blob/master/instalacion_de_herramientas/beego.md)
* [Docker](https://docs.docker.com/engine/install/ubuntu/)
* [Docker Compose](https://docs.docker.com/compose/)

### Variables de Entorno
```shell
PARAMETROS__PGUSER=[usuario]
PARAMETROS__PGPASS=[password del usuario]
PARAMETROS__PGURLS=[url de bd]
PARAMETROS__RUNMODE=[modo de ejecución]
PARAMETROS__PGSCHEMA=[esquema de bd]
PARAMETROS__HTTPPORT=[puerto]
```
**NOTA:** Las variables se pueden ver en el fichero conf/app.conf y están identificadas con PARAMETROS__...

### Ejecución del Proyecto
```shell
#1. Obtener el repositorio con Go
go get github.com/udistrital/parametros

#2. Moverse a la carpeta del repositorio
cd $GOPATH/src/github.com/udistrital/parametros

# 3. Moverse a la rama **develop**
git pull origin develop && git checkout develop

# 4. Alimentar todas las variables de entorno que utiliza el proyecto.
PARAMETROS__HTTPPORT=8080 PARAMETROS__PGURLS=127.0.0.1:27017 PARAMETROS_SOME_VARIABLE=some_value bee run
```
### Ejecución Dockerfile
```shell
# docker build --tag=parametros_crud . --no-cache
# docker run -p 80:80 parametros_crud
```

### Ejecución docker-compose
```shell
#1. Clonar el repositorio
git clone -b develop https://github.com/udistrital/core_api

#2. Moverse a la carpeta del repositorio
cd core_api

#3. Crear un fichero con el nombre **custom.env**
touch custom.env

#4. Crear la network **back_end** para los contenedores
docker network create back_end

#5. Ejecutar el compose del contenedor
docker-compose up --build

#6. Comprobar que los contenedores estén en ejecución
docker ps
```

### Ejecución Pruebas

Pruebas unitarias
```shell
# En Proceso
```

## Modelo de Datos
[Modelo de Datos Parametros](/sql/modelo_parametros_crud.png)


## Licencia

This file is part of parametros_crud.

parametros_crud is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

parametros_crud is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with parametros_crud. If not, see https://www.gnu.org/licenses/.
