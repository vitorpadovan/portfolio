FROM maven:3.8-openjdk-18 AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package -DskipTests

FROM openjdk:19-jdk-alpine
COPY --from=build /home/app/target/Portfolio-0.0.1-SNAPSHOT.jar /usr/local/lib/finalapp.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/finalapp.jar"]