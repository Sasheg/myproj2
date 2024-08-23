FROM alpine:3.14
ARG MYDIR=$MYDIR
RUN mkdir -p /tmp/$MYDIR

ARG myval1=$listvar1
RUN touch $listvar1
RUN sh run.sh hello world $listvar1
RUN sh run.sh hello world $listvar1 > tmp1
RUN cat tmp1

ENTRYPOINT ["ls", "/tmp"]
