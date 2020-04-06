# Batch
Lit le json du Corona et le parse pour le passer à l'application rest.

## Variables d'environnement en entrée
URL Source : covid.input.url
URL Destination : covid.output.url
PORT par défaut : 8800

Exemple :
C:\std\java\jdk1.8.0_121\bin\java.exe -Dcovid.input.url="https://corona-stats.online/?source=1&format=json" -Dcovid.output.url=http://localhost:8080/stats/update -jar C:\std\git\covid-19-poc\batch\target\batch-0.0.1-SNAPSHOT.jar

## Api Documentation
Aucun service api exposé.

#### Swagger
http://localhost:8080/swagger-ui.html

## Docker commands
C'est important d'être sous le répertoire racine (./covid-19-poc/batch) afin d'exécuter le docker build.
Il est aussi important de s'assurer qu'il n'y a qu'un seul fichier DockerFile (comme c'est le cas ici).

L'image est buidlée ensuite exécutée.
`docker build . -t covid-19:latest &&  docker run --rm -it covid-19`

L'image accepte aussi les variables d'environnement qu'on peut utiliser : **JAVA_OPTS** : `docker run --rm -it -e JAVA_OPTS=-Dserver.port=8800 covid-19`
JAVA_OPTS c'est des options java.
