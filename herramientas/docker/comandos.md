# Comandos a utilizar:


## Imágenes

Enlistar imágenes que tengo en mi sistema:

```
docker images
```

Descargar imágenes almacenadas en dockerhub: (no se deben colocar los símbolos `<`, `>`)

```
docker pull <imagen a descargar>:<version de imagen>
```

Borrar imagen:

```
docker rmi -f <imagen descargada>
```

## Run y exec

### Run 1

Crear contenedor con nombre `micontenedor` a partir de imagen de `ubuntu` (latest) que ejecute el comando `bash` en modo de `daemon`: (no se deben colocar los símbolos `<`, `>`)

```
docker run --name <micontenedor> -dit ubuntu bash
```

### Run 2

Crear contenedor con nombre `micontenedor` a partir de imagen de `ubuntu` (latest) que ejecute el comando `bash` en modo de `daemon` y se monte un volumen:

Primero elegimos el directorio que queremos montar, por ejemplo: `/home/<miuser>/<midirectorio>` y elegimos el nombre al que estará mapeado por ejemplo `/datos` 

(no se deben colocar los símbolos `<`, `>`)

```
dir_montar=/home/<miuser>/<midirectorio>
docker run -v $dir_montar:/datos --name <micontenedor> -dit ubuntu bash
```

### Exec (una vez ejecutado run anterior)

Entrar al contenedor `micontenedor`: (no se deben colocar los símbolos `<`, `>`)

```
docker exec -it <micontenedor> bash
```

y salimos con:

```
exit
```

Entrar al contenedor `micontenedor` con un user `miuser` creado: (no se deben colocar los símbolos `<`, `>`)


```
docker exec -u=<miuser> -it <micontenedor> /bin/bash
```




