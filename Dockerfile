FROM alpine:3.8
MAINTAINER Oleksii Fedorov <waterlink000@gmail.com>

WORKDIR /src
ADD . $PWD

ENV PROTOBUF_TAG v3.6.0

RUN ./build.sh

ENTRYPOINT ["protoc"]
