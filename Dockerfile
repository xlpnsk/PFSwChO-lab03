# syntax=docker/dockerfile:1.3
# base image
FROM node:alpine

# setup workdir
WORKDIR /usr/app

# config ssh
RUN apk add --no-cache openssh-client git
RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

# clone repo
RUN --mount=type=ssh git clone git@github.com:xlpnsk/PFSwChO-lab03 . 

# install dependencies
RUN npm install

# default command
CMD ["npm", "start"]

#expose port
EXPOSE 8080