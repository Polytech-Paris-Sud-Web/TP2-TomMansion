FROM node:16.13-alpine as builder
WORKDIR /app
COPY . .
RUN npm ci
RUN npm run build

FROM node:16.13-alpine
WORKDIR .
RUN npm install -g http-server
COPY --from=builder /app/dist/simple-app/ .
EXPOSE 8080
CMD http-server simple-app
