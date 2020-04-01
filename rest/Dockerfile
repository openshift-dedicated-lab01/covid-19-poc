FROM openjdk:8-jdk-alpine
ENV TZ="America/Montreal"
ENV JAVA_OPTS=""
# L'image utilisée ici c'est l'image xx-springboot
# Ce contenaire charge les jar files de l'application rest et l'application batch
# $JAVA_OPTS pour les paramètres additionnels

RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
WORKDIR /app
COPY target/*.jar rest.jar

# L'application batch.jar sera exécutée en sh
CMD ["sh", "-c", "java -jar $JAVA_OPTS rest.jar"]
