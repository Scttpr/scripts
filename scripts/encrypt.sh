FILE="$1"
openssl enc -aes-256-cbc -pbkdf2 -in "$FILE" -out "$FILE.enc"

