FROM debian:stable

RUN apt-get update
RUN apt-get install -y git openjdk-17-jre-headless

RUN git clone https://github.com/idealo/mongodb-performance-test /mongodb-performance-test

COPY mongodb-performance-test.sh /usr/local/bin/mongodb-performance-test
RUN chmod 555 /usr/local/bin/mongodb-performance-test

WORKDIR /tmp
