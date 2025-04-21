#!/bin/bash

for i in 1 2 3; do
  echo "$i"
done

counter=0

# in while loop runs till the condition if TRUE

while [ "$counter" -lt 4 ]; do
  counter=$((counter + 1))
  echo "$counter"
done

# in until the loop works till the condition is FALSE
until [ "$counter" -gt 6 ]; do
  counter=$((counter + 1))
  echo "$counter"

done
