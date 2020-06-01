FROM openjdk:8-jre-alpine

COPY  target/app-0.0.1-SNAPSHOT.jar /app.jar

CMD ["java", "-jar", "-Dserver.port=5000" , "/app.jar"]
