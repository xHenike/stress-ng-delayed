FROM ubuntu:24.04
RUN apt-get update && \
    apt-get install -y stress-ng && \
    rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["/bin/sh", "-c"]