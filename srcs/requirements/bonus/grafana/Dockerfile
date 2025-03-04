FROM debian:11


RUN apt-get update && apt-get install -y wget gnupg2 && \
    wget -q -O - https://packages.grafana.com/gpg.key | apt-key add - && \
    echo "deb https://packages.grafana.com/oss/deb stable main" | tee -a /etc/apt/sources.list.d/grafana.list && \
    apt-get update && apt-get install -y grafana && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

CMD ["/usr/sbin/grafana-server", "--homepath=/usr/share/grafana"]


# RUN apt-get update && apt-get install -y apt-transport-https software-properties-common wget gpg && \
# 	mkdir -p /etc/apt/keyrings/ && \
# 	wget -q -O - https://apt.grafana.com/gpg.key | gpg --dearmor | tee /etc/apt/keyrings/grafana.gpg > /dev/null && \
# 	echo "deb [signed-by=/etc/apt/keyrings/grafana.gpg] https://apt.grafana.com stable main" | tee -a /etc/apt/sources.list.d/grafana.list && \
# 	apt-get update && apt-get install -y grafana 

# RUN apt-get remove gpg wget

# CMD ["/usr/sbin/grafana-server", "--homepath=/usr/share/grafana"]