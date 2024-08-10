FROM ubuntu:22.04
ENV MY_DIR $MY_DIR
RUN mkdir /tmp/"$MY_DIR"
ENTRYPOINT ["ls", "/tmp"]
