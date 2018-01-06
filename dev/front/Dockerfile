FROM node:alpine
WORKDIR /app
RUN apk add --update git && rm -rf /var/cache/apk/*
RUN git clone https://github.com/wjsc/catalogue.git /app
RUN npm install
EXPOSE 3000
RUN export REACT_APP_API="http://localhost:3001/" && export REACT_APP_CDN_URL="http://localhost:3002/"
CMD [ "npm", "start"]
USER node
