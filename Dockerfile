# syntax=docker/dockerfile:1.4
FROM maven:3.9.6-eclipse-temurin-21 AS build
WORKDIR /app

# Copy Maven wrappers and POM first (for caching dependencies)
COPY pom.xml mvnw ./
COPY .mvn .mvn
# Download all project dependencies (including plugins) into Maven cache
RUN --mount=type=cache,target=/root/.m2 mvn dependency:go-offline -B

# Copy application source and resources
COPY src src
COPY src/main/resources src/main/resources

# Build application without running tests, reusing Maven cache
RUN --mount=type=cache,target=/root/.m2 mvn clean package -DskipTests -B

FROM eclipse-temurin:21-jdk-jammy
WORKDIR /app

# Copy the built jar from the build stage
COPY --from=build /app/target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]