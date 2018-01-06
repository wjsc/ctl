FROM node:alpine
WORKDIR /app
ENV CODE_VERSION v0.5.0
RUN apk update \                                                                                                                                                                                                                        
    && apk add ca-certificates wget \                                                                                                                                                                                                      
    && update-ca-certificates
RUN wget -O - https://codeload.github.com/wjsc/catalogue/tar.gz/$CODE_VERSION \
    | tar -xz --strip-components 1 -C /app \
    && npm install
RUN npm install -g serve
EXPOSE 3000
RUN export REACT_APP_API="http://35.198.38.188:3001/" && export REACT_APP_CDN_URL="http://35.198.38.188:3002/" && npm run build --production
CMD serve -p 3000 -s build
USER node
