#!/bin/sh

if [ -z "${DEPOT}" ]; then
  MY_SCRIPT_VARIABLE=""
else
  MY_SCRIPT_VARIABLE="${DEPOT}"
fi

satis build satis.json public --no-interaction $MY_SCRIPT_VARIABLE