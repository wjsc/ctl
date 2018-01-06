FROM node:alpine
WORKDIR /app
RUN apk add --update git && rm -rf /var/cache/apk/*
RUN git clone https://github.com/wjsc/catalogue-server.git /app
RUN npm install
EXPOSE 3001
CMD [ "npm", "start" ]
USER node
