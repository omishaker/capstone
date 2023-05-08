#!/bin/bash

sed 's/,/\t/g' patients.csv \
| awk 'BEGIN{IGNORECASE=1}{print}' \
| sort -t$'\t' -k2,2 -k1,1 \
| awk '{print $2, $1, $3, $4, $5}' \
| tr [:lower:] [:upper:]

