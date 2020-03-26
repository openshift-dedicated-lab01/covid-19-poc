
FROM openjdk:8-jdk-alpine
# Ce contenaire charge les jar files de l'application rest et l'application batch
# $JAR_FILE est un variable d'environnement qui permettra de choisir quelle application
# exéctuer.

RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
WORKDIR /app
ENV JAR_FILE=rest.jar
COPY batch/target/*.jar batch.jar
COPY rest/target/*.jar rest.jar

# L'application $JAR_FILE sera exécuter en sh
CMD ["sh", "-c", "java -jar $JAR_FILE"]

