FROM node:alpine
WORKDIR /app
ENV CODE_VERSION v0.5.0
RUN apk update \                                                                                                                                                                                                                        
    && apk add ca-certificates wget \                                                                                                                                                                                                      
    && update-ca-certificates
RUN wget -O - https://codeload.github.com/wjsc/catalogue-server/tar.gz/$CODE_VERSION \
    | tar -xz --strip-components 1 -C /app \
    && npm install
EXPOSE 3001
CMD [ "npm", "start" ]
USER node
