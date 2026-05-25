FROM ghcr.io/alexei-led/stress-ng:latest
COPY --from=alpine:latest /bin/sh /bin/sh
COPY --from=alpine:latest /bin/chmod /bin/chmod
COPY --from=alpine:latest /lib/ld-musl-x86_64.so.1 /lib/ld-musl-x86_64.so.1
COPY --from=alpine:latest /lib/libc.musl-x86_64.so.1 /lib/libc.musl-x86_64.so.1
COPY entrypoint.sh /entrypoint.sh
RUN ["/bin/chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]