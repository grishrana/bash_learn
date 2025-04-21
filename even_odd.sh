#!/bin/bash

echo Enter a number
read number

if [ $((number % 2)) -eq 1 ]; then
  echo "$number is odd."

elif [ "$number" -eq 0 ]; then
  echo "Number is 0"
else
  echo "$number is even."

fi
