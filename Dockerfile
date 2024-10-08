FROM node:lts-slim
ARG commitversion
ARG commitversion=1
RUN mkdir /app
COPY ./Application /app
WORKDIR /app
RUN npm install
CMD COMMITVERSION=$commitversion node app.js