FROM alpine:3

#WORKDIR /
COPY run.sh .
RUN chmod +x run.sh

RUN echo "1q2w3e4r5t6y7u8i9o" > tmp1
RUN ./run.sh > tmp2

ENTRYPOINT ["cat", "tmp2"]
