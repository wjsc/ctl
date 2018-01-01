FROM centos:7

RUN curl -sL https://rpm.nodesource.com/setup_6.x | /bin/bash

RUN yum install -y gcc-c++ make \
  && yum install -y git \
  && yum install -y nodejs npm

RUN npm install -g pm2
RUN npm install -g serve

RUN mkdir -p /app
RUN git clone https://github.com/wjsc/catalogue.git /app
ADD ./entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh
