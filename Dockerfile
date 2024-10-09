FROM node:lts-slim
ARG commitversion=1
ENV COMMITVERSION=$commitversion
RUN mkdir /app
COPY ./Application /app
WORKDIR /app
RUN npm install
CMD node app.js