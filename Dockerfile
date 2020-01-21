FROM python:3.6.10-alpine3.11
ARG ELASTICHQ_VERSION=v3.5.12
RUN apk add --update --no-cache git && \
    apk add --no-cache --virtual .build-deps gcc libc-dev && \
    rm -rf /var/cache/apk/*
WORKDIR /app
RUN git clone --depth 1 https://github.com/ElasticHQ/elasticsearch-HQ -b $ELASTICHQ_VERSION .
RUN pip3 install -U -r requirements.txt && \
    pip3 install gunicorn
EXPOSE 5000
ENTRYPOINT ["/usr/local/bin/gunicorn", "-w", "1", "-b", "0.0.0.0:5000", "application:application"]
