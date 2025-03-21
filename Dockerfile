FROM node:22.14.0-alpine

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apk update \
 && apk add openjdk17-jdk --no-interactive \
 && apk cache clean

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk

RUN npm install -g typescript@^5.8.0
RUN npm install -g firebase-tools@13.35.0
RUN npm install -g mocha@^11.1.0

ENV HOST 0.0.0.0
EXPOSE 9005

