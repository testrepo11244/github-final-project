#!/usr/bin/env bash

# simple-interest.sh
# A Bash script that calculates simple interest based on user input.
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "Simple Interest Calculator"
echo "--------------------------"

# Prompt for principal amount
read -p "Enter the principal amount: " principal

# Prompt for annual rate of interest (in percent)
read -p "Enter the rate of interest (in %): " rate

# Prompt for time period (in years)
read -p "Enter the time period (in years): " time

# Validate numeric input
if ! [[ "$principal" =~ ^[0-9]+([.][0-9]+)?$ ]] ||
   ! [[ "$rate" =~ ^[0-9]+([.][0-9]+)?$ ]] ||
   ! [[ "$time" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: All inputs must be numeric."
    exit 1
fi

# Calculate simple interest
interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

echo "-----------------------------------"
printf "Principal: %s\nRate: %s%%\nTime: %s years\n" "$principal" "$rate" "$time"
echo "Simple Interest: $interest"
echo "-----------------------------------"