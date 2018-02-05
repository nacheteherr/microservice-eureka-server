FROM anapsix/alpine-java
MAINTAINER Ignacio Herrero
ADD eurekaServer/target/eurekaServer-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 1001
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]