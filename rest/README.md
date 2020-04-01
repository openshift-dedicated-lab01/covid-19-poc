# covid-19-poc Rest App

## Api Documentation
A rest application that provides the latest metrics on Corona related matters.



#### Swagger
http://localhost:8080/swagger-ui.html

## Database

The Default configuration is H2. If none of the Database variables are set, it defaults to H2.

### H2
The H2 Console is configured as follows:

|Fields|Configuration|
|-|-|
|**URL**|http://localhost:8080/h2-console/|
|**Driver Class**|org.h2.Driver|
|**JDBC URL**|jdbc:h2:mem:testdb|
|**User Name**|sa|

*There is no password*


### MySQL

|ENV VARS    |Description    |Default Vaue|
|------------|---------------|------------|
|SPRING_DATASOURCE| Set this to 'mysql' to activate the MySQL Database |h2|
|MYSQL_HOST| The MySQL host or IP, note the port defaults to 3306 |localhost|
|MYSQL_DBNAME| The database should already exist, the app does not create it |db_example|
|MYSQL_USER| Any prexisting user will do. It is suggested not to use the root |springuser|
|MYSQL_PASS| The MySQL password that matches the concerned user |password|

> Note that the database user should have the proper permissions. This step can be skipped depending on your setup.
```SQL
CREATE USER 'springuser'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON db_example.* TO 'springuser'@'localhost';
```
=======
# REST

## Docker commands
C'est important d'être sous le répertoire racine (./covid-19-poc/rest) afin d'exécuter le docker build.
Il est aussi important de s'assurer qu'il n'y a qu'un seul fichier DockerFile (comme c'est le cas ici).

L'image est buidlée ensuite exécutée.
`docker build . -t covid-19:latest &&  docker run --rm -it covid-19`

L'image accepte aussi les variables d'environnement qu'on peut utiliser : **JAVA_OPTS** : `docker run --rm -it -e JAVA_OPTS=-Dserver.port=8800 covid-19`
JAVA_OPTS c'est des options java.
