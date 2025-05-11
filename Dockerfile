# Dockerfile for Vite + React app
FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

RUN npm run build

# Use a lightweight HTTP server to serve the build
RUN npm install -g serve
CMD ["serve", "-s", "dist", "-l", "3000"]
