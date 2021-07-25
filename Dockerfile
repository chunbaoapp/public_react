FROM node

# Create app directory
WORKDIR /usr/app/client/
COPY client/package*.json ./
RUN npm install -qy --save material-ui axios react-tap-event-plugin
COPY client/ ./
RUN npm run build

ENV PORT 8000
EXPOSE 8000
CMD ["npm", "start"]