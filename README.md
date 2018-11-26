# Backend with Java and Springboot 

This Backend is made from this
[guide](https://spring.io/guides/gs/spring-boot-docker/)
and this [guide](https://spring.io/guides/gs/rest-service/)

## Installation

```
$ ./mvn clean install
```
## Running Locally

```
$ java -jar target/java-backend-0.1.0.jar 
```
go to http://localhost:3000/greeting?name=test

## [Docker] Build image

```
$ docker build -t myapp .
or
$ ./mvn install dockerfile:build
```
## Running Locally

```
$ docker run -p 3000:3000 innostarterkit/java-backend:latest
```

go to http://localhost:3000/greeting?name=test

## Link

- [mvnw](https://github.com/takari/maven-wrapper)