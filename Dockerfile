FROM openjdk:11-jre-slim-buster

WORKDIR /home

COPY /home/.m2/repository ./.m2/repository

COPY /home/petclinic.jar ./petclinic.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "petclinic.jar"]


