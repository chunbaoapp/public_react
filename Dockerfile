FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
# copy source code
COPY src/* ./

cmd npm install
# If you are building your code for production
# RUN npm ci --only=production

cmd npm install --save material-ui axios react-tap-event-plugin

# Bundle app source
COPY . .

cmd npm start --port 8000
# EXPOSE 8000
# CMD [ "node", "server.js" ]