FROM openjdk:8u212-jdk-slim

LABEL mainter="elshanakbarovv@gmail.com"

VOLUME /tmp

EXPOSE 8080

ADD gcp-microservice.jar gcp-microservice.jar

ENTRYPOINT ["java","-Djava.security.egd=file:\dev\.\urandom","-jar","/gcp-microservice.jar"]

