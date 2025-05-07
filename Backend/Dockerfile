FROM maven:3.8.5-openjdk-11 AS build
WORKDIR /app
COPY . .
RUN chmod +x mvnw
RUN ./mvnw clean package -Dmaven.test.skip=true

FROM openjdk:11-jdk-slim
COPY --from=build /app/target/backendHotel-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]