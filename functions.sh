function my_func() {
  echo "My func called"
}

my_functn() {
  echo "my_functn called"
}

my_args_funcn() {
  echo $1 $2 $3
}

my_func
my_functn
my_args_funcn pranav kiran waikar

function local_var_function() {
  local name=$1
  echo "local var name= $name"
}

name=maxwell
local_var_function pranav
echo "global var name is $name"

var=33
readonly var
# var=56 # this statement will give error
echo "var=$var"
 
function sample_func() {
  echo "Hello sample"
}

readonly -f sample_func