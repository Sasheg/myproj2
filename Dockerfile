FROM ubuntu:22.04
RUN "mkdir /tmp/${MY_DIR}"
ENTRYPOINT ["ls", "/tmp"]
