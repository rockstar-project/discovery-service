FROM ibmjava
MAINTAINER Rockstar Team

ADD target/discovery-service-1.0.0-SNAPSHOT.jar discovery-service.jar
EXPOSE 8761
RUN bash -c 'touch /discovery-service.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/discovery-service.jar"]
