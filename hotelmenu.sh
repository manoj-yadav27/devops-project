#!/bin/bash

# Function to display the menu options
display_menu() {
    echo "Restaurant Menu:"
    echo "1. Idli"
    echo "2. Dosa"
    echo "3. Veg Pulav"
    echo "4. Poori "
    echo "0. Exit"
}


# Function to calculate the total price
calculate_price() {
    local item="$1"
    local quantity="$2"
    local price=0

    case "$item" in
        "1")
            price=40
            ;;
        "2")
            price=60
            ;;
        "3")
            price=65
            ;;
        "4")
            price=70
            ;;
        *)
            echo "Invalid option"
            return 1
    esac

    local total=$((price * quantity))
    echo "Total price: $total rs"
}

# Main script logic
choice=""

while [[ "$choice" != "0" ]]; do
    display_menu
    read -rp "Enter your choice (0-4): " choice

    case "$choice" in
        "1")
            echo "You selected Idli"
            read -rp "Enter num of plates: " quantity
            calculate_price "$choice" "$quantity"
            ;;
        "2")echo "You selected Masala Dosa"
            read -rp "Enter num of plates: " quantity
            calculate_price "$choice" "$quantity"
            ;;
        "3")
            echo "You selected Veg Pulav"
            read -rp "Enter num of plates: " quantity
            calculate_price "$choice" "$quantity"
            ;;
        "4")
            echo "You selected Poori "
            read -rp "Enter num of plates: " quantity
            calculate_price "$choice" "$quantity"
            ;;
        "0")
            echo "Exiting the program"
            ;;
        *)
            echo "Invalid option"
            ;;
    esac

    
done

