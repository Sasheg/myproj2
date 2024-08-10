FROM alpine:3.14
RUN mkdir "/tmp/$MYDIR"
ENTRYPOINT ["ls", "/tmp"]
