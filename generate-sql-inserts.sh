#!/bin/sh

while read -r line; do
  echo "INSERT INTO cheatnets (address, created_at) VALUES ('$line', NOW())"
  echo "ON CONFLICT DO NOTHING;"
done

echo "SELECT COUNT(*) as address_count from cheatnets;"
