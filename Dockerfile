FROM alpine:3.16

WORKDIR /app

COPY qqwry_linux_386 ./qqwry
RUN chmod +x ./qqwry

ADD https://github.com/out0fmemory/qqwry.dat/raw/master/qqwry_lastest.dat ./qqwry.dat
# COPY qqwry_20220420.dat ./qqwry.dat

ENTRYPOINT ["./qqwry"]
