# batch

## Docker commands
C'est important d'être sous le répertoire racine (./covid-19-poc/batch) afin d'exécuter le docker build.
Il est aussi important de s'assurer qu'il n'y a qu'un seul fichier DockerFile (comme c'est le cas ici).

L'image est buidlée ensuite exécutée.
`docker build . -t covid-19:latest &&  docker run --rm -it covid-19`

L'image accepte aussi les variables d'environnement qu'on peut utiliser : **JAVA_OPTS** : `docker run --rm -it -e JAVA_OPTS=-Dserver.port=8800 covid-19`
JAVA_OPTS c'est des options java.
