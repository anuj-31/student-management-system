# Stage 1: Build
FROM maven:3.9.9-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .        # Copy only pom.xml first
COPY src ./src        # Copy source code
RUN mvn clean package -DskipTests

# Stage 2: Run
FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]
