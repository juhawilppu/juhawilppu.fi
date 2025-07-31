#!/bin/bash
set -euo pipefail

SRC_DIR="public"
REMOTE="root@juhawilppu.fi"
TARGET_DIR="/var/www/html"

echo "Deploying to $REMOTE:$TARGET_DIR"
scp -r "$SRC_DIR"/* "$REMOTE:$TARGET_DIR"

echo "✅ Deployed successfully."