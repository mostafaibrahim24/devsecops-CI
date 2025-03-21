FROM openjdk:11-jre-slim-buster
ARG ARTIFACT_PATH
COPY ${ARTIFACT_PATH} /app/petclinic.jar
WORKDIR /app
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "petclinic.jar"]


