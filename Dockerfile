FROM maven:3.6.0-jdk-8-alpine

ADD pom.xml /app/pom.xml
ADD src /app/src

# Prepare by downloading dependencies
WORKDIR /app
RUN ["mvn", "dependency:resolve"]
RUN ["mvn", "verify"]

# Adding source, compile and package into a fat jar
RUN ["mvn", "package"]

EXPOSE 3000
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","target/java-backend-0.1.0.jar"]