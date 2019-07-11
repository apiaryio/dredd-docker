FROM node:lts-alpine

MAINTAINER Apiary <sre@apiary.io>

ARG DREDD_VERSION=latest
RUN npm config set loglevel error && npm install dredd@${DREDD_VERSION}
ENV PATH ${PATH}:/node_modules/.bin

CMD ["dredd"]
