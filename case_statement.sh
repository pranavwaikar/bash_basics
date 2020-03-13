vehicle=$1

case $vehicle in
  "car" )
    echo "Rent for $vehicle is 100" ;;
  "bike" )
    echo "Rent for $vehicle is 50" ;;
  "cycle" )
    echo "Rent for $vehicle is 20" ;;
  * )
    echo "Rent for $vehicle is not listed yet!" ;;
esac


echo "Enter char: \c"
read val

case $val in
  [a-z] )
    echo "a-z" ;;
  [A-Z] )
    echo "A_Z" ;;
  ? )
    echo "Some special char" ;;
  * )
    echo "Something else!" ;;
esac


