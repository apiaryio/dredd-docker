<h1 align="center">Dredd in Docker</h1>
<h3 align="center">
    DockerHub: <a href="https://hub.docker.com/r/apiaryio/dredd/">apiaryio/dredd</a>
</h3>
<p align="center">
    <a href="https://travis-ci.org/apiaryio/dredd-docker"><img src="https://travis-ci.org/apiaryio/dredd-docker.svg?branch=master" alt="Travis CI Build Status"></a>
    <a href="https://hub.docker.com/r/apiaryio/dredd/"><img src="https://img.shields.io/docker/build/apiaryio/dredd.svg" alt="Docker Build Status"></a>
    <a href="https://hub.docker.com/r/apiaryio/dredd/"><img src="https://img.shields.io/docker/pulls/apiaryio/dredd.svg" alt="Docker Pulls"></a>
    <a href="https://hub.docker.com/r/apiaryio/dredd/"><img src="https://img.shields.io/docker/stars/apiaryio/dredd.svg" alt="Docker Stars"></a>
</p>

Dredd is an HTTP API testing tool. You can find out more about it at [its documentation](https://dredd.org) or its [code repository](https://github.com/apiaryio/dredd). This repository contains [Docker](https://www.docker.com/) setup for Dredd in form of a `Dockerfile` and the tooling necessary to regularly publish a Docker image with the latest Dredd version available.

## How to run Dredd using Docker?

Please read the [Docker section](https://dredd.org/en/latest/installation.html#docker) of the Dredd's installation guide.

## How does this repository work?

This repository has [Travis CI builds](travis-ci.org/apiaryio/dredd-docker) set up. Travis CI supports setting up a [cron build](https://docs.travis-ci.com/user/cron-jobs/), which triggers every day. The build ensures the Dredd image isn't behind the latest Dredd version for more than one day.
