#!/usr/bin/sh

# https://platform.openai.com/docs/api-reference/images/createVariation

. .env

. datetime.sh

FILENAME="${1}"

resp=$( /usr/bin/curl -sL "https://api.openai.com/v1/images/variations" -H "Authorization: Bearer ${API_VERSION}" -F image="@${FILENAME}" -F n=2 )

. create.sh "images/variations" "${datetime}" "json" "${resp}"
