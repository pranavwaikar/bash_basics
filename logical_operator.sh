age=30

# AND op
if [ "$age" -gt 20 ] && [ "$age" -lt 60 ]
then
  echo "$age is valid"
else
  echo "$age is invalid"
fi


if [ "$age" -gt 20 -a "$age" -lt 60 ]
then
  echo "$age is valid"
else
  echo "$age is invalid"
fi

if [[ "$age" -gt 20 && "$age" -lt 60 ]]
then
  echo "$age is valid"
else
  echo "$age is invalid"
fi

# OR op
echo "OR:-->"
if [ "$age" -gt 20 ] || [ "$age" -eq 60 ]
then
  echo "$age is valid"
else
  echo "$age is invalid"
fi


if [ "$age" -gt 20 -o "$age" -lt 60 ]
then
  echo "$age is valid"
else
  echo "$age is invalid"
fi

if [[ "$age" -gt 20 || "$age" -lt 60 ]]
then
  echo "$age is valid"
else
  echo "$age is invalid"
fi