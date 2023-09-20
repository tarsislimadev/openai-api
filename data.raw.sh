#!/usr/bin/sh

DATA_RAW=""

case "${1}" in
  ("completions") DATA_RAW="{ \"model\": \"gpt-3.5-turbo\", \"messages\": [{\"role\": \"user\", \"content\": \"${2}\"}], \"temperature\": 0.7 }";;
esac

echo "${DATA_RAW}"
