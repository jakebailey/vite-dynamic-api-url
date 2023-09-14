FROM node:20-alpine as builder
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM caddy
COPY --from=builder /app/dist /usr/share/caddy
