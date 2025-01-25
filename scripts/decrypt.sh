#!/bin/sh

if ! command -v openssl 2>&1 >/dev/null
then
    echo "openssl could not be found"
    exit 1
fi

FILE="$1"
OUTPUT_FILE="${FILE%.enc}"
openssl enc -aes-256-cbc -pbkdf2 -d -in "$FILE" -out "$OUTPUT_FILE"
