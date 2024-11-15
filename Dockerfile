FROM gcc AS builder

WORKDIR /src
COPY *.c .

RUN gcc main.c -o calc

FROM ubuntu:latest
COPY --from=builder src/calc /usr/bin/calc

ENTRYPOINT ["calc"]
