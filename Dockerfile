#Pulling official Node image
FROM node:16-alpine

#Set Working directory
WORKDIR /app


#Installing dependencies
COPY package.json ./
COPY package-lock.json ./
COPY yarn.lock ./
RUN npm install

# Add the App
COPY . ./

RUN npm run build

#Start the app
CMD ["npm", "start"]
