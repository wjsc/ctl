FROM node:alpine
WORKDIR /app
RUN apk add --update git && rm -rf /var/cache/apk/*
RUN git clone https://github.com/wjsc/catalogue.git /app
RUN npm install
RUN npm install -g serve
EXPOSE 3000
RUN npm run build --production
CMD serve -p 3000 -s build
USER node
