# base image
FROM node:latest as node

FROM node:latest as node
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install
COPY . .
RUN npm run build


# add app
COPY . /usr/src/app

# start app
CMD ng serve --host 0.0.0.0
