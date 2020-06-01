FROM openjdk:8-jre-alpine

COPY  target/app-0.0.1-SNAPSHOT.jar /app.jar

RUN wget -O apm-agent.jar https://search.maven.org/remotecontent?filepath=co/elastic/apm/elastic-apm-agent/1.2.0/elastic-apm-agent-1.2.0.jar

CMD ["java","-javaagent:", "apm-agent.jar",   "-jar", "-Dserver.port=5000" , "/app.jar"]
