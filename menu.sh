while true; do
    echo -e "\nMenu:"
    echo "1. List users currently working"
    echo "2. Copy a file"
    echo "3. Rename a file"
    echo "4. List files in a directory"
    echo "5. Quit"
    read -p "Enter your choice: " choice

    case $choice in
        1) who ;;
        2) read -p "Enter source file: " src
           read -p "Enter destination directory: " dest
           cp "$src" "$dest" && echo "File copied successfully." ;;
        3) read -p "Enter current file name: " old
           read -p "Enter new file name: " new
           mv "$old" "$new" && echo "File renamed successfully." ;;
        4) read -p "Enter directory path: " dir
           ls "$dir" ;;
        5) echo "Goodbye!"; exit ;;
        *) echo "Invalid choice. Please try again." ;;
    esac
done
