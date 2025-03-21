FROM openjdk:11-jre-slim-buster


COPY ~/.m2/repository ~/.m2/repository

WORKDIR /app

COPY ~/petclinic.jar ./petclinic.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "petclinic.jar"]


