#!/bin/bash

echo "Enter last name or part of last name to search:"
read lastname

results=$(grep -i "$lastname" patients.csv)

if [[ -z "$results" ]]; then
    echo "No results found"
else
    echo "Search results:"
    echo "$results"
fi
