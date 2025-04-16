#!/bin/bash

DB_FILE="database.txt"

# Function to display the main menu
show_menu() {
    echo "===="
    echo "press i to add new contact"
    echo "press v to view all contacts"
    echo "press s to search for record"
    echo "press e to delete all contacts"
    echo "press d to delete one contact"
    echo "press q to exit"
    echo "===="
}

# Function to add a new contact
add_contact() {
    read -p "Enter First name: " first_name
    read -p "Enter Last name: " last_name
    read -p "Enter Email: " email
    read -p "Enter Phone number: " phone

    echo "$first_name $last_name, $email, $phone" >> "$DB_FILE"
    echo "Contact added!"
}

# Function to view all contacts
view_contacts() {
    if [ -f "$DB_FILE" ]; then
        echo "All Contacts:"
        cat "$DB_FILE"
    else
        echo "No contacts found."
    fi
}

# Function to search for a record
search_record() {
    read -p "Enter search term: " search_term
    if grep -iq "$search_term" "$DB_FILE"; then
        echo "Search results:"
        grep -i "$search_term" "$DB_FILE"
    else
        echo "No records found."
    fi
}

# Function to delete all contacts
delete_all_contacts() {
    > "$DB_FILE"
    echo "All contacts deleted."
}

# Function to delete one contact
delete_contact() {
    read -p "Enter search term to delete: " search_term
    if grep -iq "$search_term" "$DB_FILE"; then
        grep -iv "$search_term" "$DB_FILE" > temp.txt && mv temp.txt "$DB_FILE"
        echo "Contact deleted."
    else
        echo "No records found for deletion."
    fi
}

# Main script loop
while true; do
    show_menu
    read -n 1 option
    echo ""

    case $option in
        i)
            add_contact
            ;;
        v)
            view_contacts
            ;;
        s)
            search_record
            ;;
        e)
            delete_all_contacts
            ;;
        d)
            delete_contact
            ;;
        q)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac

    # Ask to return to main menu or exit
    read -p "Return to main menu (press m) or exit (press q): " choice
    if [[ $choice == "q" ]]; then
        echo "Exiting..."
        exit 0
    fi
done

