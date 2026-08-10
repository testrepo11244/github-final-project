#!/bin/bash

# Simple Interest Calculator
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "Simple Interest Calculator"
echo "---------------------------"

# Read principal amount
read -p "Enter the principal amount: " principal

# Read annual rate of interest
read -p "Enter the annual rate of interest (in %): " rate

# Read time period in years
read -p "Enter the time period (in years): " time

# Validate inputs (basic numeric check)
if ! [[ "$principal" =~ ^[0-9]+(\.[0-9]+)?$ ]] || ! [[ "$rate" =~ ^[0-9]+(\.[0-9]+)?$ ]] || ! [[ "$time" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Error: Please enter valid numeric values."
    exit 1
fi

# Calculate simple interest
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display result
echo ""
echo "Calculation Results:"
echo "  Principal Amount: $principal"
echo "  Rate of Interest: $rate%"
echo "  Time Period: $time years"
echo "  Simple Interest: $interest"