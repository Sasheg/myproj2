FROM alpine:3.14
RUN env
RUN mkdir -p "/tmp/$MYDIR"
ENTRYPOINT ["ls", "/tmp"]
