FROM java:openjdk-8-jre-alpine
VOLUME /tmp
RUN sh -c 'ls .'
ADD machine-destroyer.jar app.jar
RUN sh -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]