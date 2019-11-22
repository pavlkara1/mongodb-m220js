FROM node:carbon


RUN mkdir /app
COPY ./package.json /app
WORKDIR /app

RUN npm install 

COPY . /app
WORKDIR /app

RUN npm build

CMD npm start
