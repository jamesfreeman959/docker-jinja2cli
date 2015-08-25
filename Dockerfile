FROM python:2.7-slim

RUN pip install --upgrade pip \
    && pip install jinja2-cli pyyaml \
    && mkdir -p /data

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

WORKDIR /data

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["--help"]
