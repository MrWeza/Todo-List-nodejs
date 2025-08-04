#Base image and working directory
FROM node:22
WORKDIR /app

#Install the package files to cache it
COPY package*.json ./
RUN npm install

#Copy the rest files of the project
COPY . .

#Expose it to port 4000
EXPOSE 4000

#Start the application
CMD ["npm", "start"]