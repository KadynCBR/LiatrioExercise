FROM node:lts-slim
RUN mkdir /app
COPY ./Application /app
WORKDIR /app
CMD node app.js