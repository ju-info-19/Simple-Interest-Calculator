#!/bin/bash
read -p "Enter principal: " principal
read -p "Enter rate of interest (%): " rate
read -p "Enter time (years): " time
interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
echo "Simple Interest: $interest"
