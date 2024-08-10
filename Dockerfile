FROM ubuntu:22.04
ARG MY_DIR1=$MY_DIR
RUN mkdir "/tmp/"$MY_DIR1"
ENTRYPOINT ["ls", "/tmp"]
