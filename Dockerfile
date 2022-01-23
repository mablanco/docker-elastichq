FROM python:3.9.9-alpine3.15
ARG ELASTICHQ_VERSION=v3.5.12
WORKDIR /app
RUN apk upgrade && \
    apk add --no-cache git && \
    apk add --no-cache --virtual .build-deps build-base libffi-dev openssl-dev && \
    rm -rf /var/cache/apk/* && \
    git clone --depth 1 https://github.com/ElasticHQ/elasticsearch-HQ -b $ELASTICHQ_VERSION .  && \
    pip3 install -U -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["/usr/local/bin/gunicorn", "-w", "1", "-b", "0.0.0.0:5000", "application:application"]
