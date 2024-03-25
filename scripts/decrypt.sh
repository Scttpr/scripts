#!/bin/sh

FILE="$1"
OUTPUT_FILE="${FILE%.enc}"
openssl enc -aes-256-cbc -pbkdf2 -d -in "$FILE" -out "$OUTPUT_FILE"

