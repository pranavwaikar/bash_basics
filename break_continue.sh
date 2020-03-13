echo "break"

for (( i=0; i<10; i++ ))
do
  if [ $i -gt 5 ]
  then
    break
    echo "Inside If: $i"
  fi
  echo "Outside If: $i"

done

echo "continue"

for (( i=0; i<10; i++ ))
do
  if [ $i -gt 5 ]
  then
    continue
    echo "Inside If: $i"  
  fi
  echo "Outside If: $i"

done