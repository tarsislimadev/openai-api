#!/usr/bin/sh

. .env

PATH="completions"

CONTENT="Say this is a test!"

/usr/bin/curl \
  "https://api.openai.com/v1/${PATH}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${API_VERSION}" \
  --data "$( . ./data.raw.sh "${PATH}" "${CONTENT}" )"
