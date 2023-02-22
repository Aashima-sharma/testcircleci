FROM node:14.21.1-alpine
RUN mkdir -p /usr/src
WORKDIR /usr/src
COPY . /usr/src
RUN npm install
RUN npm run build
EXPOSE 3000
CMD npm start
