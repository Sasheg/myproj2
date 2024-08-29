FROM alpine:3.14

WORKDIR /

ARG MYDIR=$MYDIR
RUN mkdir -p /tmp/$MYDIR

COPY run.sh .
RUN chmod +x run.sh

ARG myextvar1=$listvar1
ARG myextvar2=$listvar2
ARG myextvar3=$listvar3

RUN echo "1q2w3e4r5t6y7u8i9o" > $myextvar1
RUN ./run.sh hello world $myextvar1 > tmp1

#ENTRYPOINT ["ls", "/tmp"]
ENTRYPOINT ["cat", "/tmp1"]
