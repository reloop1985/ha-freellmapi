#!/bin/sh
set -eu

mkdir -p /data

if [ ! -s /data/.encryption-key ]; then
    node -e "process.stdout.write(require('crypto').randomBytes(32).toString('hex'))" > /data/.encryption-key
    chmod 600 /data/.encryption-key
fi

export ENCRYPTION_KEY="$(cat /data/.encryption-key)"
export PORT=3001
export FREEAPI_DB_PATH=/data/freellmapi.db

exec node server/dist/index.js
