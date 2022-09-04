FROM openjdk:8-jdk-alpine

RUN addgroup -g 1001 -S notroot && adduser -u 1001 -S notroot  -G notroot

USER notroot

WORKDIR /home/notroot

COPY my-app-1.0.0.jar goodbye.jar

CMD java -jar goodbye.jar