FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline
EXPOSE 8080
COPY src ./src

CMD ["./mvnw", "spring-boot:run"]