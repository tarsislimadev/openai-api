#!/usr/bin/sh

# https://platform.openai.com/docs/api-reference/images/createVariation

. .env

PATH="completions"

FILENAME="${1}"

/usr/bin/curl  https://api.openai.com/v1/images/variations \
  --header "Authorization: Bearer ${API_VERSION}" \
  -F image="@${FILENAME}" \
  -F n=2 \
  -F size="1024x1024"
