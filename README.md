# docker-elastichq
Docker image for ElasticHQ, a Monitoring and Management Web Application for ElasticSearch instances and clusters (http://www.elastichq.org).

## How to use this image

This will start a ElasticHQ instance listening on port 5000:

```
$ docker run -d -p 5000:5000 --name elastichq mablanco/elastichq
```
