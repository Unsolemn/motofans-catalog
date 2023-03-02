#!/bin/bash

# Send the HTTP request and save the response to a variable
response=$(curl -X 'GET' \
  'https://api.kinopoisk.dev/v1/movie/random' \
  -H 'accept: application/json' \
  -H 'X-API-KEY: 974X6K2-HMNM5ZM-QYM7F4Y-RQ3A2BH')

# Extract the id from the response using jq
id=$(echo "$response" | jq -r '.id')

# Write the response to a file with the name of the id
echo "$response" > "./content/spec/$id.json"
