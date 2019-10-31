FROM openjdk:8u212-jdk-slim

LABEL mainter="elshanakbarovv@gmail.com"

VOLUME /tmp

EXPOSE 8080

ARG JAR_FILE=target/gcp-microservice.jar

ADD ${JAR_FILE} gcp-microservice.jar

ENTRYPOINT ["java","-Djava.security.egd=file:\dev\.\urandom","-jar","/gcp-microservice.jar"]

