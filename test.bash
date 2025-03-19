#!/bin/bash

set -euo pipefail

# Load environment variables
set -o allexport
source .env
source $1
[ -f .env.$1 ] && source .env.$1

# Set default values
: ${PRIVKEY_FILE:=$PKI_DIR/$BROKER_ID/$SITE_ID.priv.pem}
: ${ROOT_CRT_FILE:=$PKI_DIR/$BROKER_ID/root.crt.pem}
: ${APP_DIR:=$PROJECT_DIR/$1}
: ${LENS_DIR:=$PROJECT_DIR/lens}

docker compose -p $1 up proxy spot app${2:--default}
