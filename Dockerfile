FROM node:latest

WORKDIR /usr/src/app

COPY hoster.json ./

RUN npm install -g newman

COPY . .

CMD [ "newman", "run", "hoster.json" ]