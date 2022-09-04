FROM openjdk:8-jdk-alpine

RUN useradd notroot -d notroot

USER notroot

WORKDIR /home/notroot

COPY staging/*.jar goodbye.jar

CMD java -jar goodbye.jar