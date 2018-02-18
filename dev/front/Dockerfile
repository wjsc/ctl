FROM node:alpine
WORKDIR /app
RUN npm install -g pm2
CMD export REACT_APP_API="http://api.catalogue/" && export REACT_APP_CDN_URL="http://static.catalogue/" \
    && pm2 --no-daemon start npm --name catalogue -- run start
EXPOSE 3000
USER node
