# covid-19-poc
POC Openshift Dedicated, Springboot, ...

## Docker commands
C'est important d'être sous le répertoire racine (./covid-19-poc) afin d'exécuter le docker build.
Il est aussi important de s'assurer qu'il n'y a qu'un seul fichier DockerFile (comme c'est le cas ici).

L'image est buidlée ensuite exécutée.
`docker build . -t "covid-19" &&  docker run --rm -it covid-19`

L'image accepte aussi les variables d'environnement qu'on peut utiliser sont

**JAR_FILE** : `docker run --rm -it -e JAR_FILE=batch.jar covid-19`
JAR_FILE ici peut être batch.jar ou bien rest.jar
**JAVA_OPTS** : `docker run --rm -it -e JAVA_OPTS=-Dserver.port=8800 covid-19`
JAVA_OPTS c'est des options java.

Les options à date dépendent du jar généré dans les dossiers respectifs, ils sont codés en durs dans le DockerFile. Ils sont :
* batch.jar
* rest.jar
