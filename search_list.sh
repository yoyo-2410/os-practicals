my_list=("apple" "banana" "cherry" "date" "grape")
search_element="cherry"
element_found=0

for item in "${my_list[@]}"; do
    [[ $item == $search_element ]] && { element_found=1; break; }
done

if (( element_found )); then
    echo "$search_element found in the list."
else
    echo "$search_element not found in the list."
fi
