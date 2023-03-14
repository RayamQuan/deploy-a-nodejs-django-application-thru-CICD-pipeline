FROM node:14

WORKDIR /app

COPY package*.json ./

RUN npm update

RUN npm install

COPY . .

RUN export NODE_OPTIONS=--openssl-legacy-provider

RUN npm install frontendbank

RUN npm run build

CMD ["npm", "start"]

