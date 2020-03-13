n=1

while [ $n -le 10 ]
do
  echo $n
  n=$((n+1))
done

n=1
while (( $n <= 10 ))
do
  echo $n
  (( n++ ))
done

n=1
while (( $n <= 3 ))
do
  echo $n
  (( n++ ))
  open -a Terminal -n
  sleep 2
done

# UNTIL loop
n=1
until [ $n -gt 10 ]
do
  echo "$n"
  (( ++n ))
done

# FOR loops
for i in {1..10}
do
  echo $i
done

# will only work on bash v-4
# for i in {1..10..2}
# do
#   echo $i
# done

for (( i=0; i<5; i++ ))
do
  echo $i
done

# FOR loop for command
for command in ls pwd date
do
  echo $command
  $command
done

for item in *
do
  if [ -f $item ]
  then
    echo $item
  fi
done

# SELECT loop 

select name in pranav kajal ashmit sumedha
do
  case $name in
    pranav )
      echo "pranav selected" ;;
    kajal )
      echo "kajal selected" ;;
    ashmit )
      echo "ashmit selected" ;;
    sumedha )
      echo "sumedha selected"  
  esac
done