#!/bin/bash

j="y"

while [ $j = "y" ]; do
    echo
    echo "1.Calculator"
    echo "2.Table"
    echo "3.Check a number is ever or odd"
    echo "4.Factorial of a number"
    echo "5.Prime number check"
    echo "6.Fibonacci number"
    echo "7.Decimal To Binary"
    echo "8.Binary To Decimal"
    echo "9.Decimal To Hex"
    echo
    echo "Enter your choice"
    read -p "Type your Option:" Option
    case $Option in
    1)
        clear
        sum=0
        i="y"
        echo " Enter first number :"
        read n1
        echo "Enter second number :"
        read n2
        while [ $i = "y" ]; do
            echo "1.Addition"
            echo "2.Subtraction"
            echo "3.Multiplication"
            echo "4.Division"
            echo "Enter your choice"
            read ch
            case $ch in
            1)
                sum=$(expr $n1 + $n2)
                echo "Sum ="$sum
                ;;
            2)
                sum=$(expr $n1 - $n2)
                echo "Sub = "$sum
                ;;
            3)
                sum=$(expr $n1 \* $n2)
                echo "Mul = "$sum
                ;;
            4)
                sum=$(expr $n1 / $n2)
                echo "Div = "$sum
                ;;
            *) echo "Invalid choice" ;;
            esac
            echo "Do u want to continue using calculator (y/n)) ?"
            read i
            if [ $i != "y" ]; then
                continue
            fi
        done
        echo
        ;;

    2)
        echo  "Enter The Number upto which you want to Print Table: "
        read n
        i=0
        
        while [ $i -ne 10 ]; do
            i=$((i + 1))
            table=$((i * n))
            echo "$n x $i = $table"
        done
        echo
        ;;

    3)
        echo -n "Enter The Number: "
        read -r n
        if [ $((n % 2)) -eq 0 ]; then
            echo "is a Even Number"
        else
            echo "is a Odd Number"
        fi
        echo
        ;;

    4)
        echo -n "Enter The Number: "
        read -r a
        fact=1
        while [ "$a" -ne 0 ]; do
            fact=$((fact * a))
            a=$((a - 1))
        done
        echo $fact
        echo
        ;;

    5)
        echo -n "Enter Any Number: "
        read -r n
        i=1
        c=1
        while [ $i -le "$n" ]; do
            i=$((i + 1))
            r=$((n % i))
            if [ $r -eq 0 ]; then 
            c=$((c + 1))
            fi
        done

        if [ $c -eq 2 ]; then
            echo "Prime"
        else
            echo "Not Prime"
        fi
        echo
        ;;

    6)
        echo "Enter the value of n"
        read n
        a=0
        b=1
        count=2
        echo "Fibonacci series:"
        echo $a
        echo $b
        while [ $count -le $n ]; do
            fib=$(expr $a + $b)
            a=$b
            b=$fib
            echo $fib
            count=$(expr $count + 1)
        done
        echo
        ;;

    7)
        echo "Enter any decimal number:"
        read num
	binary=""
	while [ $num -gt 0 ]
	do
    	binary="$((num % 2))$binary"
    	num=$((num / 2))
	done
	echo "Binary equivalent: $binary"
        ;;

    8)
       echo "Enter a binary number:"
	read bin_num
	dec_num=0
	power=1

	while [ $bin_num -ne 0 ]; do
	dec_num=$((dec_num + (bin_num % 10) * power))
  	power=$((power * 2))
 	bin_num=$((bin_num / 10))
	done

	echo "Decimal equivalent: $dec_num"

        ;;
      

    9)
        echo "Type a Decimal number"
        read a
        printf "\nHexadecimal="%x $a
        echo
        ;;
    esac
    echo "Do u want to continue using the app (y/n)) ?"
    read j
    if [ $j != "y" ]; then
        exit
    fi
done
