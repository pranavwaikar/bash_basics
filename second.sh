# passing arguments
#run like ./second.sh pranav kajal mridul
echo $0 $1 $2 $3 '> echo $0 $1 $2 $3'

# Converting all arguments to an array
args=("$@")
echo ${args[0]} ${args[1]} ${args[2]}

# can directly print all args here
echo $@
# can print number of args here
echo $#


