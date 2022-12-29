FROM node:18
LABEL version="2.0.0"
LABEL description="Script written in TypeScript that uploads CGM readings from LibreLink Up to Nightscout"

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

CMD [ "npm", "start" ]
