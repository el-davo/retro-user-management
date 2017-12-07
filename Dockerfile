FROM node

COPY package.json .
COPY yarn.lock .

RUN npm install -g yarn && yarn

COPY . .

EXPOSE 3000
CMD ["yarn", "start"]
