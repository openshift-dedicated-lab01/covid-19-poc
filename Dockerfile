FROM openjdk:8-jdk-alpine
ENV TZ="America/Montreal"
ENV JAR_FILE=rest.jar
ENV JAVA_OPTS=""
# L'image utilisée ici c'est l'image xx-springboot
# Ce contenaire charge les jar files de l'application rest et l'application batch
# $JAR_FILE est un variable d'environnement qui permettra de choisir quelle application
# exéctuer.
# $JAVA_OPTS pour les paramètres additionnels

RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
WORKDIR /app
COPY batch/target/*.jar batch.jar
COPY rest/target/*.jar rest.jar

# L'application $JAR_FILE sera exécutée en sh
CMD ["sh", "-c", "java -jar $JAVA_OPTS $JAR_FILE"]

