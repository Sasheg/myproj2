FROM alpine:3.14
ARG MYDIR=$MYDIR
RUN mkdir -p /tmp/$MYDIR

RUN echo $listvar1
ARG myextvar1=$listvar1
ARG myextvar2=$listvar2
RUN echo $myextvar1
RUN touch /$listvar1
RUN sh run.sh hello world $listvar1
RUN sh run.sh hello world $listvar1 > tmp1
RUN cat tmp1

ENTRYPOINT ["ls", "/tmp"]
