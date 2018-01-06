FROM node:alpine
WORKDIR /app
RUN npm install -g pm2
CMD pm2 --name api start -x src/index.js --no-daemon --watch "./src"
EXPOSE 3001
USER node
