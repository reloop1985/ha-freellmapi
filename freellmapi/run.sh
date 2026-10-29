#!/bin/sh
set -eu

DATA_DIR="/config"
mkdir -p "$DATA_DIR"

if [ ! -s "$DATA_DIR/.encryption-key" ]; then
    node -e "process.stdout.write(require('crypto').randomBytes(32).toString('hex'))" > "$DATA_DIR/.encryption-key"
    chmod 600 "$DATA_DIR/.encryption-key"
fi

export ENCRYPTION_KEY="$(cat "$DATA_DIR/.encryption-key")"
export PORT=3001
export FREEAPI_DB_PATH="$DATA_DIR/freellmapi.db"

exec node server/dist/index.js
