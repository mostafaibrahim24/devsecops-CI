FROM maven:3.8.6-jdk-11-slim 
WORKDIR /app

COPY pom.xml .
COPY src src/

RUN mvn clean package

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "target/*.jar"]


