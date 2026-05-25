FROM ghcr.io/alexei-led/stress-ng:latest
COPY --from=busybox:latest /bin/sh /bin/sh
COPY --from=busybox:latest /bin/sleep /bin/sleep
ENTRYPOINT ["/bin/sh", "-c", "sleep 45 && exec stress-ng \"$@\"", "--"]