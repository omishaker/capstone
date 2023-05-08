#!/bin/bash
filename="addPatient.sh"

if [ -e "$filename" ]; then
    echo "Press any key to continue to CTRL+C to exit."
    read
else
    echo "patientId,firstName,lastName,phoneNumber" >> "$filename" 
fi

echo "Enter patient details:"
read -p "First name: " firstname
read -p "Last name: " lastname
read -p "Phone number: " phonenumber
patientid=$(echo "${lastname:0:4}${firstname:0:1}" | tr '[:lower:]' '[:upper:]')

echo "$patientid,$firstname,$lastname,$phonenumber" >> patients.csv
echo "Patient record added successfully!"

