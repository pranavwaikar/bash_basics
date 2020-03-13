trap "echo SIGINT/2 is called" SIGINT
trap "echo SIGKILL/9 is called" 9
echo "PID=$$"

i=0
while(( i<10 ))
do
  sleep 3
  echo $i
  (( i++ ))
done


trap "echo exit 0 is called" 0
exit 0