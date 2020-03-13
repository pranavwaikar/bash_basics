os=("Linux" "Windows" "Centos")

os[3]="mac"

# prints all array
echo ${os[@]}
echo "${!os[@]}"
echo ${#os[@]}

unset os[3]
echo ${os[@]}


