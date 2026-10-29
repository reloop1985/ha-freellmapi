#!/bin/sh
set -eu

DATA_DIR="/app/server/data"
HA_DATA_DIR="/data"

mkdir -p "$DATA_DIR" "$HA_DATA_DIR"

if [ ! -s "$HA_DATA_DIR/encryption_key" ]; then
    node -e "process.stdout.write(require('crypto').randomBytes(32).toString('hex'))" > "$HA_DATA_DIR/encryption_key"
fi

export ENCRYPTION_KEY="$(cat "$HA_DATA_DIR/encryption_key")"
export PORT=3001
export FREEAPI_DB_PATH="$HA_DATA_DIR/freellmapi.db"

exec node server/dist/index.js
