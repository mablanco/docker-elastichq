### :warning: This repository has been archived. The upstream developers have abandoned the project (<https://github.com/ElasticHQ/elasticsearch-HQ#this-project-is-no-longer-maintained-use-at-your-own-risk>).

# docker-elastichq
Docker image for ElasticHQ, a Monitoring and Management Web Application for ElasticSearch instances and clusters (<http://www.elastichq.org>).

This image uses a minimalistic approach. It's built upon Alpine Linux and launches ElasticHQ through Gunicorn with one worker. This makes it ideal for development and/or testing and for production environments with scarce resources or an expected low number of requests to the app.

## How to use this image

This will start a ElasticHQ instance listening on port 5000:

    $ docker run -d -p 5000:5000 --name elastichq mablanco/elastichq
