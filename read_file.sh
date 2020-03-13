# WHILE LOOP
while read p
do
  echo $p
done < data.txt

cat data.txt | while read p
do
  echo $p
done 

# -r will be used for interpreting escape characters
while IFS=" " read -r line
do 
  echo $line
done < data.txt

