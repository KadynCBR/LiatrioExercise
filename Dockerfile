FROM node:lts-slim
RUN mkdir /app
COPY ./Application /app
WORKDIR /app
RUN npm install
CMD node app.js