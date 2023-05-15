FROM node:18.14.2-slim as builder
RUN mkdir -p /app
WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .
RUN npm run build

EXPOSE 3000
ENTRYPOINT ["node", "./dist/server.js"]