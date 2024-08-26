FROM alpine:3.14
ARG MYDIR=$MYDIR
RUN mkdir -p /tmp/$MYDIR
COPY run.sh .
RUN echo $listvar1
ARG myextvar1=$listvar1
ARG myextvar2=$listvar2
ARG myextvar3=$listvar3
RUN echo "---------------=================---------------"
RUN echo $listvar1
CMD ["echo", "$listvar1"]
RUN echo "---------------=================---------------"
RUN echo $myextvar1
CMD ["echo", "$myextvar1"]
RUN touch /$listvar1
RUN touch /tmp1
RUN ls
#CMD run.sh hello world $listvar1
#CMD run.sh hello world $listvar1 >> tmp1

CMD ["run.sh", "hello", "world", "$listvar1", ">>", "/tmp1"]

RUN echo "---------------=================---------------"
RUN ls /tmp
RUN echo "---------------=================---------------"

#RUN ["cat", "/tmp1"]

#ENTRYPOINT ["ls", "/tmp"]
ENTRYPOINT ["cat", "/tmp1"]
