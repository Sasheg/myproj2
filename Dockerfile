FROM alpine:3.14
RUN env
ARG MYDIR=$MYDIR
RUN env
RUN mkdir -p /tmp/$MYDIR
#ENTRYPOINT ["ls", "/tmp"]
RUN ls /tmp
