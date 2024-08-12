FROM ubuntu:22.04
ARG MYDIR=$MYDIR
RUN mkdir -p /tmp/$MYDIR
ENTRYPOINT ["ls", "/tmp"]
