#!/bin/sh
printf "Enter choice\n 1.ADDITION\n 2.SUBTRACTION\n 3.MULTIPLICATION\n 4.DIVISION\n 5.MODULUS\n 6.EXIT";
while true; do
echo "\n Enter choice"
read choice
case $choice in
 1) echo "\n Enter Two numbers"
    read a b
    sum=$((a + b))
    echo "\n Sum is : $sum "
    ;;
 2)
    echo "\n Enter Two numbers"
    read a b
    dif=$((a - b))
    echo "\n difference is : $dif"
    ;;
 3)
    echo "\n Enter Two numbers"
    read a b
    mul=$((a * b))
    echo "\n product is : $mul"
    ;;
 4)
    echo "\n Enter Two numbers"
    read a b
    div=$((a / b))
    echo "\n quotient is : $div"
    ;;
 5)
    echo "\n Enter Two numbers"
    read a b
    mod=$((a % b))
    echo "\n modulus is : $mod"
    ;;
 6) break
    ;;
esac
done
