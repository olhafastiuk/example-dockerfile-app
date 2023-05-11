# syntax=docker/dockerfile:1

# FROM ubuntu:22.04
FROM node:19-bullseye

WORKDIR /app
RUN npm install --global serve
COPY package.json .
COPY src src
COPY public public

# RUN ls -la public

RUN npm install

RUN npm run build

# COPY build .

EXPOSE 3000
ENTRYPOINT serve build
