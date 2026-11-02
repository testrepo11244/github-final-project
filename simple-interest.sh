#!/usr/bin/env bash
# Simple interest calculator
# simple interest = (principal * rate * time) / 100

echo "Simple Interest Calculator"
echo "Enter the principal, rate of interest, and time period."

read -r -p "Principal: " principal
read -r -p "Rate of interest (percent per year): " rate
read -r -p "Time period (years): " time

if ! [[ "$principal" =~ ^[0-9]+([.][0-9]+)?$ ]] || \
   ! [[ "$rate" =~ ^[0-9]+([.][0-9]+)?$ ]] || \
   ! [[ "$time" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
  echo "Error: principal, rate of interest, and time period must be non-negative numbers."
  exit 1
fi

interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN { printf "%.2f", (p * r * t) / 100 }')
total=$(awk -v p="$principal" -v i="$interest" 'BEGIN { printf "%.2f", p + i }')

echo "Principal: $principal"
echo "Rate of interest: $rate%"
echo "Time period: $time years"
echo "Simple interest: $interest"
echo "Total amount: $total"