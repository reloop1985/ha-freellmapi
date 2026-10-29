#!/bin/sh
set -eu

DATA_DIR="/app/server/data"
mkdir -p "$DATA_DIR"

if [ ! -s /data/.encryption-key ]; then
    mkdir -p /data
    node -e "process.stdout.write(require('crypto').randomBytes(32).toString('hex'))" > /data/.encryption-key
    chmod 600 /data/.encryption-key
fi

export ENCRYPTION_KEY="$(cat /data/.encryption-key)"
export PORT=3001
export FREEAPI_DB_PATH="$DATA_DIR/freellmapi.db"

exec node server/dist/index.js
