FROM node:14.15.4

RUN npm install --global http-server

COPY . /app

ENV PORT=8080

WORKDIR /app

ENTRYPOINT http-server -p ${PORT} /app
