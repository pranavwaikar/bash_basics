num1=209
num2=20

echo $(( num1 + num2))
echo $(( num1 - num2))
echo $(( num1 * num2))
echo $(( num1 / num2))
echo $(( num1 % num2))

echo $(expr $num1 + $num2 )
echo $(expr $num1 - $num2 )
# for multiplication using above yntax we need to add escape character before *
echo $(expr $num1 \* $num2 ) 
echo $(expr $num1 / $num2 )
echo $(expr $num1 % $num2 )

# FOR FLOATING POINT NUMBERS
echo "20.6+30.7" | bc
echo "20.6-30.7" | bc
echo "20.6*30.7" | bc
echo "20.6/30.7" | bc
# for division using bc command we need to set scale for the number of decimal places.
echo "scale=2;20.6/30.7" | bc
echo "20.6%30.7" | bc

echo "$num1+$num2" | bc
echo "$num1-$num2" | bc
echo "$num1*$num2" | bc
echo "$num1%$num2" | bc
# for division using bc command we need to set scale for the number of decimal places.

# MATH ops
echo "scale=2;$num1/$num2" | bc
echo "scale=2;sqrt($num1)" | bc -l #-l for mat lib

