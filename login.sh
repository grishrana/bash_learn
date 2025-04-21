#!/bin/bash

# This script checks if the positional argument is authenticated user or not.

user=$(whoami)

if [ "$1" = "$user" ]; then
  echo "Hello $user Welcome"
elif [ -z "$1" ]; then
  echo "Enter username"
else
  echo "Wrong credentials"
fi
