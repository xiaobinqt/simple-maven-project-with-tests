FROM maven:3.8.1-openjdk-8-slim
WORKDIR /java-demo
ADD ./java-demo .
RUN mvn -B -ntp -Dmaven.test.failure.ignore verify

#
