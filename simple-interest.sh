#!/usr/bin/env bash

set -euo pipefail

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <principal> <time> <rate>"
  exit 1
fi

principal="$1"
time="$2"
rate="$3"

simple_interest=$(( principal * time * rate / 100 ))

echo "Simple Interest = ${simple_interest}"
