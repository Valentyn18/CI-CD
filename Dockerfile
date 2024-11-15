FROM gcc:latest

RUN apt-get update && apt-get install -y libcunit1 libcunit1-dev

WORKDIR /usr/src/app
COPY . .

RUN gcc -o calc main.c
RUN gcc -o test test.c -lcunit
RUN ./test

CMD ["./calc"]


