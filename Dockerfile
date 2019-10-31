FROM openjdk:8u212-jdk-slim

LABEL mainter="elshanakbarovv@gmail.com"

VOLUME /tmp

EXPOSE 8080

ADD gcp-microservice.jar gcp-microservice.jar

ENTRYPOINT ["sh", "-c", "java -jar gcp-microservice.jar"]

