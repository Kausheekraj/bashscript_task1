#!/bin/bash

URL="https://www.guvi.in"

code=$(curl -s -o /dev/null -w "%{http_code}" "$URL")
echo "------------------------------------------"

echo "HTTPS status code: $code"

echo "------------------------------------------"
if [[ "$code" == "200" || "$code" == "201" ]]; then

           echo " Success: The request was successful."
   else
           echo " Failure : The request failed with status code $code."
fi
echo "------------------------------------------"

echo "Task 1 complete"

