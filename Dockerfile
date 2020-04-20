FROM node:10.15.3 as source
WORKDIR /src/build-your-own-radar
COPY package.json ./
RUN npm install
COPY . ./
RUN npm run build:dev
EXPOSE 3000
CMD [ "node", "server.js" ]
