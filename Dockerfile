# syntax=docker/docker:1
FROM node:16
# Create app directory and copy package files 
WORKDIR /usr/app-src
COPY package*.json ./

#Install app dependencies 
RUN npm install

# Copy the app source 
COPY . .
# Just for CCA
RUN echo "Creating a Docker image by kokilak2@udayton.edu"

# the command to execute the app
CMD ["npm" , "start"]

