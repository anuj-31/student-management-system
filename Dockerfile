# ---- Stage 1: Build the jar ----
FROM maven:3.9-eclipse-temurin-21 AS build
WORKDIR /app

# Copy pom.xml and download dependencies (cache friendly)
COPY pom.xml .
RUN mvn -q dependency:go-offline

# Now copy the source code
COPY src ./src

# Build the application
RUN mvn -q clean package -DskipTests

# ---- Stage 2: Run the jar ----
FROM eclipse-temurin:21-jre
WORKDIR /app

# Copy jar from the build stage
COPY --from=build /app/target/*.jar app.jar

EXPOSE 9090
ENTRYPOINT ["java","-jar","app.jar"]

