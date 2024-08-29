FROM alpine:3.14

WORKDIR /

RUN pwd

ARG MYDIR=$MYDIR
RUN mkdir -p /tmp/$MYDIR

CMD pwd

COPY shoppath/run.sh .
RUN chmod +x run.sh

ARG listvar1=$listvar1
ARG listvar2=$listvar2
ARG listvar3=$listvar3

RUN echo "1q2w3e4r5t6y7u8i9o" > $listvar3
RUN ./run.sh $listvar1 $listvar2 $listvar3 > tmp1

ENTRYPOINT ["ls", "/"]
