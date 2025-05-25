FROM maven:3.8.5-openjdk-11 AS build
WORKDIR /app
COPY . .
RUN chmod +x mvnw
RUN ./mvnw clean package -Dmaven.test.skip=true

FROM openjdk:11-jre-slim
WORKDIR /app
COPY --from=build /app/target/backendHotel-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]