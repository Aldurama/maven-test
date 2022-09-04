FROM maven:3.6.3-jdk-8
COPY my-app my-app
RUN mvn clean package -f my-app/

FROM openjdk:8-jdk-alpine
RUN addgroup -g 1001 -S notroot && adduser -u 1001 -S notroot  -G notroot
USER notroot
WORKDIR /home/notroot
COPY --from=0 my-app/target/my-app-1.0*.jar goodbye.jar
CMD java -jar goodbye.jar