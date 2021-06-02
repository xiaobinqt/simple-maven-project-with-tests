FROM maven:3.8.1-openjdk-8-slim
WORKDIR /simple-maven-project-with-tests
ADD . .
ARG CUSTOM_ENV_TEST
RUN echo ${CUSTOM_ENV_TEST}
RUN mvn -B -ntp -Dmaven.test.failure.ignore verify
