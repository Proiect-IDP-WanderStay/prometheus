FROM prom/prometheus

# RUN mkdir /etc/prometheus/
COPY ./prometheus.yml /etc/prometheus/prometheus.yml
COPY ./entrypoint.sh /usr/local/bin/
# RUN chmod +x /usr/local/bin/entrypoint.sh
