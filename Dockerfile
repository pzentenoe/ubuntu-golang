FROM ubuntu:20.04

RUN apt update && \
    apt install wget -y
##Golang install
RUN wget https://golang.org/dl/go1.16.3.linux-amd64.tar.gz && \
    tar -zxf go1.16.3.linux-amd64.tar.gz -C /usr/local/ && \
    chown -R root:root /usr/local/go
ENV PATH PATH=$PATH:/usr/local/go/bin

ENV GOPATH /go
ENV PATH $GOPATH/bin:$PATH
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
WORKDIR $GOPATH








