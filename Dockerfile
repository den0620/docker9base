FROM alpine:latest

RUN apk --no-cache --update add plan9port socat

# Copy essentials  # chroot wont be able to find /bin/rc
RUN cp /lib/ld-musl-x86_64.so.1 /usr/lib/plan9/lib/ld-musl-x86_64.so.1

COPY START.sh /START.sh
RUN chmod +x /START.sh

EXPOSE 564

CMD ["/START.sh"]
