#!/bin/bash
echo "Simple Calculator"

i="y"

while [ $i = "y" ]
do
    echo "Enter first number:"
    read n1
    echo "Enter second number:"
    read n2

    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "Enter your choice:"
    read ch

    case $ch in
        1)
            sum=$(echo "$n1 + $n2" | bc)
            echo "Addition = $sum"
            ;;
        2)
            sum=$(echo "$n1 - $n2" | bc)
            echo "Subtraction = $sum"
            ;;
        3)
            sum=$(echo "$n1 * $n2" | bc)
            echo "Multiplication = $sum"
            ;;
        4)
            sum=$(echo "scale=2; $n1 / $n2" | bc)
            echo "Division = $sum"
            ;;
        *)
            echo "Invalid choice!"
            ;;
    esac

    echo "Do you want to continue? (y/n)"
    read i
done

echo "Exiting calculator..."

