FROM alpine:3.14
ARG MYDIR=$MYDIR
RUN mkdir -p /tmp/$MYDIR

RUN echo $listvar1
ARG myextvar1=$listvar1
RUN echo $myextvar1
RUN touch $myextvar1
RUN sh run.sh hello world $myextvar1
RUN sh run.sh hello world $myextvar1 > tmp1
RUN cat tmp1

ENTRYPOINT ["ls", "/tmp"]
