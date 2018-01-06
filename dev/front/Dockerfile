FROM node:alpine
WORKDIR /app
RUN npm install -g pm2
CMD export REACT_APP_API="http://localhost:3001/" && export REACT_APP_CDN_URL="http://localhost:3002/" \
    && pm2 --no-daemon start npm --name catalogue -- run start
EXPOSE 3000
USER node
