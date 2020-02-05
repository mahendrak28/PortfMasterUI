FROM node:latest as node

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

RUN npm install -g @angular/cli@8.3.22
RUN npm run --build

COPY . /usr/src/app

CMD ng serve --host 127.0.0.1  --port 4900
