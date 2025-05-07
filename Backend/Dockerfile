FROM maven:3.8.5-openjdk-11
WORKDIR /app
COPY . .
RUN chmod +x mvnw
RUN ./mvnw clean package -Dmaven.test.skip=true
RUN ls -la target/
CMD ["java", "-jar", "target/backendHotel-0.0.1-SNAPSHOT.jar"]