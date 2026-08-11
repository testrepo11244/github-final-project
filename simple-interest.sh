#!/bin/bash

# Simple Interest Calculator
# This script calculates simple interest based on user input for principal, rate of interest, and time period.

echo "Simple Interest Calculator"
echo "---------------------------"

# Read principal amount
read -p "Enter the principal amount (in dollars): " principal

# Read rate of interest
read -p "Enter the annual rate of interest (in %): " rate

# Read time period in years
read -p "Enter the time period (in years): " time

# Calculate simple interest
# Formula: SI = (P * R * T) / 100
interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

# Display the result
echo ""
echo "--------------------------------"
echo "Principal Amount : $principal"
echo "Rate of Interest : $rate%"
echo "Time Period      : $time years"
echo "Simple Interest  : $interest"
echo "--------------------------------"