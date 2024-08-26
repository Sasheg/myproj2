FROM alpine:3.14
ARG MYDIR=$MYDIR
RUN mkdir -p /tmp/$MYDIR

RUN echo $listvar1
ARG myextvar1=$listvar1
ARG myextvar2=$listvar2
RUN echo $myextvar1
RUN touch /$listvar1
RUN touch /tmp1
RUN ls
#CMD run.sh hello world $listvar1
#CMD run.sh hello world $listvar1 >> tmp1

CMD ["run.sh", "hello", "world", "$listvar1", ">>", "/tmp1"]

CMD cat tmp1

ENTRYPOINT ["ls", "/tmp"]
