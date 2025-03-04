FROM debian:bullseye

RUN apt-get update && apt-get install -y wget gnupg2 && \
    wget -q -O - https://packages.grafana.com/gpg.key | apt-key add - && \
    echo "deb https://packages.grafana.com/oss/deb stable main" | tee -a /etc/apt/sources.list.d/grafana.list && \
    apt-get update && apt-get install -y grafana && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

CMD ["/usr/sbin/grafana-server", "--homepath=/usr/share/grafana"]
