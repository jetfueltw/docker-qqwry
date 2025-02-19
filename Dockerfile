FROM alpine:3.16

WORKDIR /app

COPY qqwry_linux_386 ./qqwry
RUN chmod +x ./qqwry

ADD https://raw.githubusercontent.com/FW27623/qqwry/main/qqwry.dat ./qqwry.dat
# COPY qqwry_20240925.dat ./qqwry.dat

ENTRYPOINT ["./qqwry"]
