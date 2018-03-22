FROM node:alpine
WORKDIR /app
RUN npm install -g serve
RUN apk update \                                                                                                                                                                                                                        
    && apk add ca-certificates wget \                                                                                                                                                                                                      
    && update-ca-certificates
ENV CODE_VERSION v2.6.0
RUN wget -O -  https://github.com/wjsc/catalogue/releases/download/$CODE_VERSION/build.tar.gz \
    | tar -xz --strip-components 1 -C /app
EXPOSE 3000
CMD serve -p 3000 -s /app
USER node
