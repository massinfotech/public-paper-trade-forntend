FROM node:lts-alpine
WORKDIR /client
RUN npm install -g http-server
COPY package*.json .
RUN npm install
COPY . .
RUN npm run build
EXPOSE 3000
CMD [ "http-server", "dist" ]