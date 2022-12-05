RUN mvn clean install

FROM openjdk:17-jdk-alpine
VOLUME /tmp
COPY --from=0 /target/demo-*.jar app.jar
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
