#!/bin/sh

if ! command -v curl 2>&1 >/dev/null
then
    echo "curl could not be found"
    exit 1
fi

if ! command -v jq 2>&1 >/dev/null
then
    echo "curl could not be found"
    exit 1
fi

IP=$1
curl --silent "https://api.hackertarget.com/aslookup/?q=$IP&output=json" | jq
