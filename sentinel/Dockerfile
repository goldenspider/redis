FROM       redis:4

COPY       sentinel.conf          /usr/local/etc/redis/sentinel.conf
RUN        chown redis:redis      /usr/local/etc/redis/sentinel.conf
COPY       sentinel-entrypoint.sh /usr/local/bin/
RUN        chmod +x /usr/local/bin/sentinel-entrypoint.sh

ENV SENTINEL_QUORUM         2
ENV SENTINEL_DOWN_AFTER     30000
ENV SENTINEL_FAILOVER       180000
ENV SENTINEL_PARALLEL_SYNCS 1

ENTRYPOINT [ "sentinel-entrypoint.sh" ]
