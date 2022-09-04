FROM openjdk:8-jdk-alpine

RUN useradd notroot -p 1234 --home /home/notroot

USER notroot

WORKDIR /home/notroot

COPY my-app-1.0.0.jar goodbye.jar

CMD java -jar goodbye.jar