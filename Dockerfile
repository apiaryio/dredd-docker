FROM node:carbon-alpine

MAINTAINER Apiary <sre@apiary.io>

ARG DREDD_VERSION=latest
RUN echo ${DREDD_VERSION}
RUN apk add --no-cache make gcc g++ python git
RUN npm config set loglevel error
RUN npm install dredd@${DREDD_VERSION}
RUN apk del make gcc g++ python
ENV PATH ${PATH}:/node_modules/.bin

CMD ["dredd"]
