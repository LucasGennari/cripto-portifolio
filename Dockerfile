# Etapa de build
FROM maven:3.9.6-eclipse-temurin-21 AS build
WORKDIR /app
COPY src /app/src
COPY pom.xml /app

RUN mvn clean install

# Etapa final
FROM eclipse-temurin:21-jre-alpine
WORKDIR /app

# Copia o JAR da fase de build para a imagem final
COPY --from=build /app/target/cripto-portifolio-0.0.1-SNAPSHOT.jar /app/app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
