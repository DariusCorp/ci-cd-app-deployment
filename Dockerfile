FROM openjdk:17-jdk-alpine
VOLUME /tmp
COPY "/target/demo-*.jar" app.jar
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
