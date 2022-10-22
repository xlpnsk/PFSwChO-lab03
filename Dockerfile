# syntax=docker/dockerfile:1.3
# Specify a base image
FROM node:alpine

WORKDIR /usr/app
RUN apk add --no-cache openssh-client git
RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts
RUN --mount=type=ssh git clone git@github.com:xlpnsk/PFSwChO-lab03 . 
RUN npm install

# Default command
CMD ["npm", "start"]