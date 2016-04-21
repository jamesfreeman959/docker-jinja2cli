FROM python:3.5-alpine

RUN apk --no-cache add bash \
    && pip install --upgrade pip \
    && pip install jinja2-cli pyyaml \
    && mkdir -p /data

COPY docker-entrypoint.sh /usr/local/bin/

WORKDIR /data
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["--help"]
