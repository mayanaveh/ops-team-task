#!/bin/bash

# Generate logs every 5 seconds
while true; do
  echo "$(date) - Hello from the Bash log generator" >> /var/log/log-gen.log
  sleep 5
done

