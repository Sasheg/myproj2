FROM alpine:3.14
ARG MYDIR=$MYDIR
RUN mkdir -p /tmp/$MYDIR

ARG myval1=$myval1
RUN touch $myval1
RUN sh run.sh hello world $myval1
RUN sh run.sh hello world $myval1 > tmp1
RUN cat tmp1

ENTRYPOINT ["ls", "/tmp"]
