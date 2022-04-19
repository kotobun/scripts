#!/bin/sh
# NOTE: ~/.tgrc should have TOKEN and CHAT_ID declared
. ~/.tgrc
TEXT="$(cat -)"
curl -s -X POST "https://api.telegram.org/bot${TOKEN}/sendMessage" -d chat_id="${CHAT_ID}" -d text="${TEXT}" | jq

