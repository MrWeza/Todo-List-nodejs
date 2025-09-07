FROM node:22 as build
WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

FROM node:alpine 

EXPOSE 4000

CMD ["npm", "start"]