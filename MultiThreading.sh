#!/bin/bash

# Function to perform a task
function compute {
  echo "Thread ${1} started"
  sleep 4
  echo "Thread ${1} done"
}

# Array to hold background process IDS
PIDS=()

# Execute task in Separate Threads
for ((i = 0; i < 4; i++)); do
  compute $i &
  # $! gets the PID of background job
  # += appends the PID returned from ($!)
  PIDS+=($!)
done

# wait for all threads to finish
# @ is like a spread operator in python (*array)
# Expands to "pid1" "pid2" "pid3"
for pid in "${PIDS[@]}"; do
  wait $pid
  echo "${pid} completed"
done

echo "All Threads Completed"
