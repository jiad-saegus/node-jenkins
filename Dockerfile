FROM node:12-alpine3.14
WORKDIR /app
COPY package.json /app
COPY . /app
CMD node index.js
EXPOSE 8081