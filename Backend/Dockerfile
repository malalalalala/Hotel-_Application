FROM maven:3.8.5-openjdk-11
WORKDIR /app
COPY . .
RUN chmod +x mvnw
RUN ./mvnw clean package -Dmaven.test.skip=true
RUN ls -la target/
ENTRYPOINT ["java", "-jar", "target/backendHotel-0.0.1-SNAPSHOT.jar", \
  "--spring.jpa.hibernate.ddl-auto=none", \
  "--spring.sql.init.mode=never", \
  "--spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.PostgreSQLDialect", \
  "--spring.datasource.url=${DATABASE_URL}", \
  "--spring.datasource.username=${PGUSER}", \
  "--spring.datasource.password=${PGPASSWORD}", \
  "--spring.datasource.driver-class-name=org.postgresql.Driver", \
  "--server.port=8081"]
#FROM maven:3.8.5-openjdk-11
#WORKDIR /app
#COPY . .
#RUN chmod +x mvnw
#RUN ./mvnw clean package -Dmaven.test.skip=true
#RUN ls -la target/
#ENTRYPOINT ["java","-jar","target/backendHotel-0.0.1-SNAPSHOT.jar","--spring.sql.init.mode=never", \
 # "--spring.jpa.hibernate.ddl-auto=create","--server.port=${PORT:8081}"]

#CMD ["java", "-jar", "target/backendHotel-0.0.1-SNAPSHOT.jar","--logging.level.root=DEBUG", "--logging.level.grupo6=TRACE",]