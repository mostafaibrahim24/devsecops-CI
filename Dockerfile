FROM maven:3.8.6-jdk-11-slim AS build
WORKDIR /app

COPY pom.xml .
COPY src src/

RUN mvn clean package -DskipTests

# Use a smaller runtime image for production
FROM openjdk:11-jre-slim-buster

COPY --from=build target/*.jar petclinic.jar

WORKDIR /app

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "petclinic.jar"]


