#!/bin/bash
cd /app/
npm install
npm run build
# pm2 --no-daemon start npm --name front -- run start
serve -s build
