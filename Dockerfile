FROM node:20.12.2

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 1337

ENV NODE_ENV=develop

CMD ["npm", "run", "strapi develop"]
