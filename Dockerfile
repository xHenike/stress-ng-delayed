FROM busybox:latest AS shell
FROM ghcr.io/alexei-led/stress-ng:latest
COPY --from=shell /bin/sh /bin/sh
COPY --from=shell /bin/sleep /bin/sleep
ENTRYPOINT ["/bin/sh", "-c", "sleep 45 && exec stress-ng \"$@\"", "--"]