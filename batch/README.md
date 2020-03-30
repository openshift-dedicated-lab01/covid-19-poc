# Batch
Lit le json du Corona et le parse pour le passer à l'application rest.

## Variables d'environnement en entrée
URL Source : covid.input.url
URL Destination : covid.output.url 

Exemple :
C:\std\java\jdk1.8.0_121\bin\java.exe -Dserver.port=8800 -Dcovid.input.url="https://corona-stats.online/?source=1&format=json" -Dcovid.output.url=http://localhost:8080/stats/update -jar C:\std\git\covid-19-poc\batch\target\batch-0.0.1-SNAPSHOT.jar

## Api Documentation
Aucun service api exposé.

#### Swagger
http://localhost:8080/swagger-ui.html

