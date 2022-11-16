FROM openjdk:8
ADD target/jenkins-0.0.1-SNAPSHOT.jar jenkins-0.0.1-SNAPSHOT.jar
EXPOSE 5000
ENTRYPOINT ["java","-jar","jenkins-0.0.1-SNAPSHOT.jar"]