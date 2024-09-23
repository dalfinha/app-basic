FROM openjdk:17-jdk-alpine
WORKDIR /app
COPY . .
RUN ./gradlew build
EXPOSE 10000
ENTRYPOINT ["java", "-jar", "build/libs/hello-world-app-1.0-SNAPSHOT.jar"]
