FROM node:carbon-alpine

MAINTAINER Apiary <sre@apiary.io>

ARG DREDD_VERSION=latest
RUN echo ${DREDD_VERSION}
RUN apk add --no-cache make gcc g++ python git && \
  npm config set loglevel error && \
  npm install dredd@${DREDD_VERSION} && \
  apk del make gcc g++ python
ENV PATH ${PATH}:/node_modules/.bin

CMD ["dredd"]
