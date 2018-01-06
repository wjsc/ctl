FROM node:alpine
WORKDIR /app
RUN npm install -g pm2
CMD pm2 --name static start -x src/index.js --no-daemon --watch "./src"
EXPOSE 3002
USER node
