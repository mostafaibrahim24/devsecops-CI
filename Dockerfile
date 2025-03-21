FROM openjdk:11-jre-slim-buster

WORKDIR /home

COPY ~/.m2/repository ~/.m2/repository

COPY ~/petclinic.jar ~/petclinic.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "petclinic.jar"]


