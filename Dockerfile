FROM alpine:3.14
RUN mkdir "/tmp/$MY_DIR1"
ENTRYPOINT ["ls", "/tmp"]
