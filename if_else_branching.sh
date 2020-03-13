number=10

# simple if
if [ $number -eq 10 ] 
then
  echo "Condition is true: number is 10"
fi

# if-else
if [ $number -eq 9 ]
then
  echo "Number is 9"
else
  echo "Number is not 9"
fi

# nested if-else
if [ $number -eq 5 ]
then
  echo "Number is 5"
elif [ $number -eq 9 ]
then
  echo "Number is 9"
else
  echo "Number is 10"
fi

# for strings
value=pranav
if [ $value = "pranav" ]
then
  echo "Value is pranav"
fi