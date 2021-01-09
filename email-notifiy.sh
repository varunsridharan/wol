#!/bin/bash
source /automation-scripts/global-config.conf

SUBJECT="$1"
TEXT="$2"

curl -s --user "api:$MG_KEY" \
    "https://api.mailgun.net/v3/$MG_DOMAIN/messages" \
    -F from="$FROM_NAME <$FROM_EMAIL>" \
    -F to="$TO_EMAIL" \
    -F subject="$SUBJECT" \
    -F text="$TEXT"
