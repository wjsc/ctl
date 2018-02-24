git clone https://github.com/wjsc/ctl.git
cd ctl
git clone https://github.com/wjsc/catalogue.git
git clone https://github.com/wjsc/catalogue-server.git
git clone https://github.com/wjsc/catalogue-sync.git
cd catalogue
npm install
cd ../catalogue-server
npm install
cd ../catalogue-sync
npm install
cd ctl/dev
docker-compose build
docker-compose up -d
