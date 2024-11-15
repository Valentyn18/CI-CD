FROM gcc:latest

RUN apt-get update && \
    apt-get install -y gcc libcunit1-dev && \
    apt-get clean

WORKDIR /app

COPY . .

RUN gcc test.c -o test-calc -l cunit
RUN ./test-calc
CMD ["./test-calc"]


