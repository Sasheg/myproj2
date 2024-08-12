FROM alpine:3.14
ARG MYDIR=$MYDIR
RUN mkdir -p /tmp/$MYDIR
ENTRYPOINT ["ls", "/tmp"]
