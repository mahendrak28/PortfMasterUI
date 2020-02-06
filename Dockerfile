# base image
FROM node:latest as node
WORKDIR /usr/src/app
COPY . .

RUN npm install
RUN npm run build --prod


# add app
COPY . /usr/src/app

# start app
CMD ng serve --host 0.0.0.0
