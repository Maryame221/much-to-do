#!/bin/bash

curl -f http://localhost:8080/health

if [ $? -ne 0 ]; then
  echo "Health check failed"
  exit 1
fi

echo "Health check passed"