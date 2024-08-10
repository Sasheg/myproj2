FROM ubuntu:22.04
RUN mkdir /tmp/demo
ENTRYPOINT ["ls", "/tmp"]
