echo "Enter file name: \c"
read file_name

if [ -f $file_name ]
then
  if [ -w $file_name ]
  then
    echo "Type here: (To quit ctrl+d): "
    cat >> data.txt
  else
    echo "No write permission!"
  fi
else
  echo "$file_name does not exist"
fi