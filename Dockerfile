FROM ubuntu
RUN apt-get update && apt-get install openjdk-17-jdk -y && apt install maven -y
WORKDIR /opt
COPY ./ /opt/
RUN mvn clean package -Dmaven.test.skip=true
EXPOSE 8080
CMD ["java", "-jar", "target/student-registration-backend-0.0.1-SNAPSHOT.jar"]