FROM openjdk:7
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN java -version


FROM alpine
RUN echo  "ci demo" > ci_demo.txt \
    && tar -czvf cidemo.${GIT_COMMIT}.tar.gz ci_test.txt \
    && mv cidemo.${GIT_COMMIT}.tar.gz /ci/package
