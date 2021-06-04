FROM maven:3.8.1-openjdk-8-slim
WORKDIR /simple-maven-project-with-tests
ADD ./java-demo .
RUN mvn -B -ntp -Dmaven.test.failure.ignore verify