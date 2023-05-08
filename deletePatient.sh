#!/bin/bash

echo "Enter last name or part of last name to delete:"
read lastname

matches=$(grep -i "$lastname" patients.csv)

if [[ -z "$matches" ]]; then
    echo "No matches found"
else
    echo "The following records match the search criteria:"
    echo "$matches"
    echo "Are you sure you want to delete this record? (y/n)"
    read confirmation
    
    if [[ "$confirmation" == "y" ]]; then
        grep -iv "$lastname" patients.csv > patients_temp.csv
        
        mv patients_temp.csv patients.csv
     
        echo "Records were deleted."
    else
        echo "Records were not deleted."
    fi
fi
