https://www.youtube.com/watch?v=zWVV31NYi1U&feature=youtu.be&list=PLS1QulWo1RIYmaxcEqw5JhK3b-6rgdWO_&t=1885
The shell scripts are interpreted. Not compiled.

* Different shells: cat /etc/shells
* Locate bash : which bash
* The spacing is important. you have to be careful with the spaces.
* Unix does not care about the extentions, but its a good practice and helps IDE's
# first.sh
* The first line should be #! /bin/bash
* The file created can be executed using: ./first.sh  but,  you need executable permission.
* For executable permission: chmod +x first.sh
* Use # for making comments
* Variabels are of 2 types: System variables & User-defined variables
* System variables : Writen in all caps, maintained by nix systems
* User-defined variables: generally all small, maintained by user
* $REPLY is a built-in variable, which automatically accepts when nothing is 
specified.

# second.sh
* $0 $1 $2 will contain the passed arguments to the program
* we can use $$ to get pid
* $@ contains list of all arguments passed to the program
* $# contains number of arguments passed to the program

# if_else_branching.sh
* You can use [] for writing conditions.

* Integer comparison

| Operator | Meaning| syntax  | Comment |
| ------------- | ------------- |-------------  | ------------- |
| -eq  | is equal to  | if[ "$a" -eq "$b" ]  | only compatible with square brackets|
| -ne  | is not equal to  | if[ "$a" -ne "$b" ]  | only compatible with square brackets|
| -gt  | is greater than  | if[ "$a" -gt "$b" ]  | only compatible with square brackets|
| -ge  | is greater than equal to  | if[ "$a" -ge "$b" ]  | only compatible with square brackets|
| -lt  | is less than  | if[ "$a" -lt "$b" ]  | only compatible with square brackets|
| -le | is less than equal to | if[ "$a" -le "$b" ]  | only compatible with square brackets|
| <  | is less  | if(("$a" < "$b"))  | only compatible with double round brackets|
| <=  | is less equal to  | if(("$a" <= "$b"))  | only compatible with double round brackets|
| >  | is greater than  | if(("$a" > "$b"))  | only compatible with double round brackets|
| >=  | is greater than equal to  | if(("$a" >= "$b"))  | only compatible with double round brackets|

* String comparison

| Operator | Meaning| syntax  | Comment |
| ------------- | ------------- |-------------  | ------------- |
| = | is equal to  | if[ "$a" = "$b" ]  | only compatible with square brackets|
| == | is equal to  | if[ "$a" == "$b" ]  | only compatible with square brackets|
| != | is not equal to  | if[ "$a" != "$b" ]  | only compatible with square brackets|
| -z | is string null ie zero length  | if[ -z "$b" ]  | only compatible with square brackets|
| < | is less than  | if[[ "$a" < "$b" ]] | only compatible with double square brackets|
| > | is greater than  | if[[ "$a" > "$b" ]]  | only compatible with double square brackets|

# file_test_operators.sh

| Operator | Meaning| 
| ------------- | ------------- |
| -e | file exists | 
| -f | file is regular | 
| -d | file is directory | 
| -b | file is block special | 
| -c | file is character special | 
| -s | file is not empty | 
| -r | file is readable | 
| -w | file is writable | 
| -x | file is executable |

# append_text_to_file.sh
* use >file.txt to overwrite the file
* use >>file.txt to append the file

# logical_operator.sh
* you can use && in between 2 square bracket pairs
* you can use -a(AND) to club all in one square bracket
* if condition is in 2 square brackets then you can use && 
* for OR - ||
* you can use -o(OR) to club all in one square bracket

# arithmatic_ops.sh
* To enable arithmatic ops we need to use (( num1 + num2 )) ie double square bracket without $
* Another is to use $(expr $num1 + $num2 ) ie to use single bracket with $(expr) with variables prepending $ symbol.
* for multiplication using above yntax we need to add escape character before *
* for floating points, we need to use bc command. bc--> basic calculator (man bc)
* for division using bc command we need to set scale for the number of decimal places.

# case_statement.sh
* it uses case-esac like syntax.
* for end of staement we need to use ;;
* for every option use )

# arrays.sh
* bash supports simple 1D arrays.
* declear array like os=("Linux" "Windows" "Centos") without comma
* to print all vars --> echo ${os[@]}
* to print all indices of array --> echo ${!os[@]}
* to print number of elements in array --> echo ${#os[@]}
* delete an element --> unset os[3]

# looops.sh
* we need to maintain count in while loop
* we can use sleep command to make bash wait for some time 
* we can open terminal in mac using open -a Terminal -n
* by using for loop we can do like {start..end..increment} for bash v4
* until is opposite of while
* for is very useful loop
* select loop for accepting choice with case statements

# read_file.sh
* We can use input redirection <
* we can use pipe & cat command also

# break_continue.sh
* break will breakout of the loop when called
* continue will skip the undelined statements when called

# functions.sh
* you can call function afer declearing it anywhere in code.
* you can access function args using $1 $2 $3...
* all variables in bash are global
* by writing local before variable name, we can make it local
* you can prepend readonly before variable name to make it readonly
* To make function readonly, we need to use -f option
* readonly means no one can overwrite it

# signals & traps
* man signal to see all man pages regarding signal
* trap command works like a callback on specified signal event
* trap command can not catch sigkill & sigstop
* kill command: kill SIGKILL PID OR kill -9 PID

# DEBUG
* you can use 'bash -x file.sh' for more verbose output 
* you can write at the top like - '#!/bin/bash -x'
* you can write 'set -x' in bash file to start debugging at that point
* To stop debugging you can write 'set +x'