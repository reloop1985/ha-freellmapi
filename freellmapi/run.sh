#!/bin/sh
set -eu

DATA_DIR="/app/server/data"
CONFIG_DIR="/config"

mkdir -p "$DATA_DIR" "$CONFIG_DIR"

if [ ! -s "$CONFIG_DIR/encryption_key" ]; then
    node -e "process.stdout.write(require('crypto').randomBytes(32).toString('hex'))" > "$CONFIG_DIR/encryption_key"
    chmod 600 "$CONFIG_DIR/encryption_key"
fi

export ENCRYPTION_KEY="$(cat "$CONFIG_DIR/encryption_key")"
export PORT=3001
export FREEAPI_DB_PATH="$DATA_DIR/freellmapi.db"

exec node server/dist/index.js
