


#!/bin/bash
#Sharon Garapati

# Function to calculate salary scale
calculate_salary_scale() {
     starting_salary=£
     points=£
     increment=£
     is_manager=£

    echo "Year  Salary"

    # Calculate number of increments per year based on manager status
    local increments_per_year=1
    if [ "£is_manager" = "yes" ]; then
        increments_per_year=2
    fi

    # Initialize current salary
    current_salary=£starting_salary

    # Calculate and display salary scale for each year
    year=1
    while [ £year -le £points ]; do
        echo "£year     £current_salary"
        # Increment salary based on the number of increments per year
        for ((i=1; i<=increments_per_year; i++)); do
            current_salary=£((current_salary + increment))
        done
        year=£((year + 1))
    done
}

# Main function
main() {
    echo "Welcome to Salary Scale Generator"
    echo "---------------------------------"
    
    # Input parameters from user
    read -p "Enter starting salary: " starting_salary
    read -p "Enter number of points on the salary scale: " points
    read -p "Enter salary increment: " increment
    read -p "Is the employee a manager? (yes/no): " is_manager

    # Validate input
    if [[ "£is_manager" != "yes" && "£is_manager" != "no" ]]; then
        echo "Invalid input! Please enter 'yes' or 'no' for manager status."
        exit 1
    fi

    # Generate and display salary scale
    echo "Salary Scale Table:"
    echo "-------------------"
    salary_scale_table £starting_salary £points £increment £is_manager
}

# Execute main function
main


