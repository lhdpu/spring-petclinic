FROM openjdk:8u282-jre
COPY target/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar /spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar
WORKDIR /
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar", "--spring.profiles.active=mysql"]