#!/bin/bash

function user_detail {
  echo "Hello $(whoami)"
  echo "Current Location $(pwd)"
}

user_detail
