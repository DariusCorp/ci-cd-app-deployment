FROM openjdk:17-jdk-alpine
VOLUME /tmp
COPY target/demo-0.0.1.jar app.jar
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
