#!/bin/bash
cd /app/
npm install
pm2 --name api start -x src/index.js --no-daemon --watch "./src"
