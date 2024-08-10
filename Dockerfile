FROM alpine:3.14
RUN env
RUN mkdir "/tmp/$MYDIR"
ENTRYPOINT ["ls", "/tmp"]
