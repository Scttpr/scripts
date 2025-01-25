#!/bin/sh

if ! command -v openssl 2>&1 >/dev/null
then
    echo "openssl could not be found"
    exit 1
fi

FILE="$1"
openssl enc -aes-256-cbc -pbkdf2 -in "$FILE" -out "$FILE.enc"
