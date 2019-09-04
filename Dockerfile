FROM google/cloud-sdk
RUN base=https://github.com/docker/machine/releases/download/v0.16.0 && \
          curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine
RUN curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose
RUN mv /tmp/docker-machine /usr/local/bin/docker-machine && \
          chmod +x /usr/local/bin/docker-machine