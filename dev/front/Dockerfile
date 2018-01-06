FROM node:alpine
WORKDIR /app
RUN apk add --update git && rm -rf /var/cache/apk/*
RUN git clone https://github.com/wjsc/catalogue.git /app
RUN npm install
EXPOSE 3000
CMD [ "npm", "start"]
USER node
