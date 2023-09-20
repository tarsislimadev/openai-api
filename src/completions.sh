#!/usr/bin/sh

# inputs

. .env

path="completions"

# runner

resp=$( bash get.sh "${path}" | jq )

# outputs

bash create.sh "${path}" "${datetime}" "datetime" "${datetime}"

bash create.sh "${path}" "${datetime}" "resp" "${resp}"
