#!/bin/bash

read -p "Enter the start number: " start_number
read -p "Enter the end number: " end_number

url_prefix="https://theweekinchess.com/zips/twic"
url_suffix="g.zip"

for ((i=start_number; i<=end_number; i++))
do
    filename=$(printf "twic%dg.zip" "$i")
    url="${url_prefix}${i}${url_suffix}"
    echo "Downloading ${filename}..."
    curl --remote-time -O "${url}"
done
