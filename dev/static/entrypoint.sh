#!/bin/bash
cd /app/
npm install
pm2 --name static start -x src/index.js --no-daemon --watch "./src"
