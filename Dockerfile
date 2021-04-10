FROM ubuntu:18.04

RUN apt update && \
    apt install wget -y
##Golang install
RUN wget https://golang.org/dl/go1.16.3.linux-amd64.tar.gz && \
    tar -zxf go1.16.3.linux-amd64.tar.gz -C /usr/local/ && \
    chown -R root:root /usr/local/go
ENV PATH PATH=$PATH:/usr/local/go/bin







