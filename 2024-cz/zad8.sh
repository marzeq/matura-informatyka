#!/bin/bash


if [ $# -lt 1 ]; then
  echo "Usage: $0 <query_file>"
  exit 1
fi

if [ ! -f "$1" ]; then
  echo "Error: $1 is not a file"
  exit 1
fi

FILE="zad8.db"
rm -f "$FILE"

sqlite3 "$FILE" < zad8.sql

sqlite3 "$FILE" <<EOF
.mode csv
.headers on
.separator "\t"
.import dane/szczepionki.txt szczepionki
.import dane/wizyty.txt wizyty
EOF


sqlite3 "$FILE" < "$1"
