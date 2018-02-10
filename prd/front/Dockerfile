FROM node:alpine
WORKDIR /app
RUN npm install -g serve
RUN apk update \                                                                                                                                                                                                                        
    && apk add ca-certificates wget \                                                                                                                                                                                                      
    && update-ca-certificates
ENV CODE_VERSION v1.1.0
RUN wget -O - https://codeload.github.com/wjsc/catalogue/tar.gz/$CODE_VERSION \
    | tar -xz --strip-components 1 -C /app \
    && rm -Rf /app/node_modules \
    && npm install
EXPOSE 3000
RUN export REACT_APP_API="http://35.199.65.40:3001/" && export REACT_APP_CDN_URL="http://35.199.65.40:3002/" && npm run build --production
CMD serve -p 3000 -s build
USER node
