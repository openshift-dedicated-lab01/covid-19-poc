# covid-19-poc
POC Openshift Dedicated, Springboot, ...

## Docker commands
C'est important d'être sous le répertoire racine (./covid-19-poc) afin d'exécuter le docker build.
Il est aussi important de s'assurer qu'il n'y a qu'un seul fichier DockerFile (comme c'est le cas ici).

L'image est buidlée ensuite exécutée.
`docker build . -t "covid-19" &&  docker run -it covid-19`

L'image accepte aussi la variable d'environnement **JAR_FILE** :
`docker run -it -e JAR_FILE=batch.jar covid-19`

Les options à date dépendent du jar généré dans les dossiers respectifs, ils sont codés en durs dans le DockerFile. Ils sont :
* batch.jar
* rest.jar
