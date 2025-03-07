FROM maven:3.8.6-openjdk-8
LABEL "author"="devops-team-Groupe N°1"

WORKDIR project
COPY . .
RUN mvn clean install
EXPOSE 8093
ENTRYPOINT java -jar target/TyActuator.jar
