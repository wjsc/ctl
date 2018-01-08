FROM node:alpine
WORKDIR /app
RUN apk update \                                                                                                                                                                                                                        
    && apk add ca-certificates wget \                                                                                                                                                                                                      
    && update-ca-certificates
ENV CODE_VERSION v0.6.0
RUN wget -O - https://codeload.github.com/wjsc/catalogue-server/tar.gz/$CODE_VERSION \
    | tar -xz --strip-components 1 -C /app \
    && rm -Rf /app/node_modules \
    && npm install
EXPOSE 3001
CMD [ "npm", "start" ]
USER node
