#!/usr/bin/sh

. .env

key="${1}"

value="${2}"

echo "${key}=${value}" >> ".env"
