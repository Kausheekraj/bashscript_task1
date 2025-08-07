#!/bin/bash

if [[ -z "$1" ]]; then
    echo "Usage: $0 filename"
    exit 1
fi

file="$1"
temp_file=$(mktemp)

i=1
while read -r line; do

    if [[ "$i" -ge 5 && "$line" == *welcome* ]]; then

        new_line=$(echo "$line" | sed 's/\bgive\b/learning/g')
        echo "$new_line" >> "$temp_file"
    else
        echo "$line" >> "$temp_file"
    fi
    i=$((i + 1))
done < "$file"


mv "$temp_file" "$file"

cat "$file"
 echo "-----------------------------------"
 echo " Task 2 complete."
