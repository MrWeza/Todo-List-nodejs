FROM node:22-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

FROM node:22-alpine
WORKDIR /app
COPY --from=build /app .
EXPOSE 4000
CMD ["npm", "start"]

