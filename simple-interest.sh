#!/usr/bin/env bash

# simple-interest.sh
# A Bash script that calculates simple interest based on user input.
# The formula used: Simple Interest = (Principal * Rate * Time) / 100

# Function to display a prompt and read a numeric value
read_number() {
    local prompt="$1"
    local var
    while true; do
        read -rp "$prompt" var
        # Check if input is a valid positive number (integer or float)
        if [[ "$var" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
            echo "$var"
            return
        else
            echo "Invalid input. Please enter a positive numeric value."
        fi
    done
}

# Read inputs from the user
principal=$(read_number "Enter the principal amount: ")
rate=$(read_number "Enter the rate of interest (in % per annum): ")
time=$(read_number "Enter the time period (in years): ")

# Calculate simple interest
interest=$(awk "BEGIN { printf \"%.2f\", ($principal * $rate * $time) / 100 }")

# Display the result
echo "----------------------------------------"
echo "Principal:      $principal"
echo "Rate of Interest: $rate %"
echo "Time Period:    $time years"
echo "----------------------------------------"
echo "Simple Interest: $interest"
echo "----------------------------------------"

exit 0