FROM eclipse-temurin:21-jre
WORKDIR /app
COPY target/todo-app-0.0.1-SNAPSHOT.jar todo-app-v1.0.jar
EXPOSE 9090
ENTRYPOINT ["java","-jar","todo-app-v1.0.jar"]
