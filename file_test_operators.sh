# \c - keep cursor on same line
echo "Enter file name: \c"
read file_name

# -e to check whether file exists or not
if [ -e $file_name ]
then
  echo "$file_name found here"
else
  echo "$file_name not found here"
fi


# -f to check whether file is regular
if [ -f $file_name ]
then
  echo "$file_name : regular file "
else
  echo "$file_name not regular file"
fi

# -d to check whether file is a directory
if [ -d $file_name ]
then
  echo "$file_name : directory file "
else
  echo "$file_name not directory file"
fi

# -b to check whether file is a block special file
if [ -b $file_name ]
then
  echo "$file_name : block special file "
else
  echo "$file_name not block special file"
fi

# -c to check whether file is a character special file
if [ -c $file_name ]
then
  echo "$file_name : character special file "
else
  echo "$file_name not character special file"
fi


# -s to check whether file is not empty?
if [ -s $file_name ]
then
  echo "$file_name : empty file "
else
  echo "$file_name not empty here"
fi

# -r to check whether file is readable
if [ -r $file_name ]
then
  echo "$file_name : readable file "
else
  echo "$file_name not readable here"
fi

# -w to check whether file is writable?
if [ -w $file_name ]
then
  echo "$file_name : writable file "
else
  echo "$file_name not writable here"
fi

# -x to check whether file is executable
if [ -x $file_name ]
then
  echo "$file_name : executable file "
else
  echo "$file_name not executable here"
fi

