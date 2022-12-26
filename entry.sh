# Create a list of options and scripts
options=(option1 "ssh & git" on \
         option2 "projects dir" on \
         option3 "python & miniconda" off)
scripts=("./git.sh" "./projects.sh" "./python.sh")

# Use the checklist command to create the list
selected=$(whiptail --title "Please select one or more options:" --checklist "Select options:" 20 60 4 "${options[@]}" 3>&1 1>&2 2>&3)

# Split the selected options into an array
IFS=' ' read -r -a selected_array <<< "$selected"

# Loop through the selected options and execute the corresponding scripts
for i in "${selected_array[@]}"; do
    # Find the index of the selected option
    index=$(printf '%s\n' "${options[@]}" | grep -n "$i" | cut -d: -f1)
    # Execute the corresponding script
    "${scripts[index]}"
done