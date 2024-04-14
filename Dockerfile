FROM maven:3.9.6-eclipse-temurin-17-focal
RUN mvn clean package -DskipTests
WORKDIR /app
RUN  git clone https://github.com/R0manM3nDev/CRUD-DAW-java-pg
WORKDIR /app/java-app
COPY target/crud-0.0.1-SNAPSHOT.jar java-app.jar
ENTRYPOINT [ "java", "-jar", "java-app.jar" ]