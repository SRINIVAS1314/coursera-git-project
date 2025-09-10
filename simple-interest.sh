#!/bin/bash

# Simple Interest Calculator
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "Simple Interest Calculator"
echo "========================="

# Get input from user
read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest: " rate
read -p "Enter the time period (in years): " time

# Calculate simple interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display result
echo ""
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $simple_interest"
echo "Total Amount: $(echo "scale=2; $principal + $simple_interest" | bc)"
