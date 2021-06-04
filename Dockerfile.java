FROM maven:3.8.1-openjdk-8-slim
WORKDIR /simple-maven-project-with-tests
ADD . .
RUN mvn -B -ntp -Dmaven.test.failure.ignore verify

# "store_artifacts": "/simple-maven-project-with-tests/target/simple-maven-project-with-tests-1.0-SNAPSHOT.jar"