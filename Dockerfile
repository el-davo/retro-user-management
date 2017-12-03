FROM node:boron

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY . .

RUN npm install -g yarn && yarn

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]
