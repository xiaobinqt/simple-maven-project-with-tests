FROM openjdk:7
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN java -version


FROM alpine
RUN echo  "demo java" > ci_test.txt \
    && tar -czvf my.tar.gz ci_test.txt
