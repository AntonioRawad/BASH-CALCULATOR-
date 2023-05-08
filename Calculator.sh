#! bin/bash 

#CALCULATOR FLOW CHART 
#1.	 start
#2.	The menu is displayed with options for the user to choose from.
#Add, / Subtract, / Multiply, / Divide,  /Power of , /Modulus,  
#Ask the User to  choose the  type of operation they want 
#Program ask user to add the variable numbers to use in that operation.
#3.	The program execute  the selected operation using the inputted numbers.
#4.	The result of the operation is displayed adding information such as 
#a prime number/ odd/ even/  divisible by five without a remainder/ .
#5.	Back again to The menu  to allow the user to choose another operation or 
#exit the program.
#6.	If the user chooses "Exit", the program stopped .
# Else , the program goes back to menu  and repeats the process.

#PRIME FUNCTION FLOW CHART 
#Enter value =num
 Check if ( num is less than 2)              false. (This is because 2 is the smallest prime number ) 
#IF NO THEN 
#START THE LOOP from 2 to num-1.  For each value of the  range, 
#CHECK USING IF 
#if num /x == 0 then ,
#then num is not prime, so  returns false.
 #If the loop completes without finding DIFFERENT VALUE FROM ZERO 
 #then num is prime, so it returns true.s

#Function to validate input
function validate_input {
while true; do
read -p "$1" input
if [[ "$input" =~ ^-?[0-9]+$ ]]; then
echo "$input"
break
else
echo "Invalid input. Please enter a valid integer."
fi
done
}

#Function to check if a number is prime
function is_prime {
num=$1
if [ $num -lt 2 ]; then
echo "false"
return
fi

for ((i=2; i<=$num/2; i++)); do
if [ $((num%i)) -eq 0 ]; then
echo "false"
return
fi
done

echo "true"
}

#Function to check if a number is odd or even
function is_odd_even {
num=$1
if [ $((num%2)) -eq 0 ]; then
echo "even"
else
echo "odd"
fi
}

#Function to check if a number is divisible by 5
function is_div_by_five {
num=$1
if [ $((num%5)) -eq 0 ]; then
echo "true"
else
echo "false"
fi
}

#Function for addition
function add {
num1=$1
num2=$2
result=$((num1+num2))
echo "Result: $result"
echo "Is prime: $(is_prime $result)"
echo "Odd/Even: $(is_odd_even $result)"
echo "Divisible by 5: $(is_div_by_five $result)"
}

#Function for subtraction
function subtract {
num1=$1
num2=$2
result=$((num1-num2))
echo "Result: $result"
echo "Is prime: $(is_prime $result)"
echo "Odd/Even: $(is_odd_even $result)"
echo "Divisible by 5: $(is_div_by_five $result)"
}

#Function for multiplication
function multiply {
num1=$1
num2=$2
result=$((num1*num2))
echo "Result: $result"
echo "Is prime: $(is_prime $result)"
echo "Odd/Even: $(is_odd_even $result)"
echo "Divisible by 5: $(is_div_by_five $result)"
}

#Function for division
function divide {
num1=$1
num2=$2
result=$((num1/num2))
echo "Result: $result"
echo "Is prime: $(is_prime $result)"
echo "Odd/Even: $(is_odd_even $result)"
echo "Divisible by 5: $(is_div_by_five $result)"
}

#Function for power of
function power_of {
num1=$1
num2=$2
result=$((num1**num2))
echo "Result: $result"
echo "Is prime: $(is_prime $result)"
echo "Odd/Even: $(is_odd_even $result)"
echo "Divisible by 5: $(is_div_by_five $result)"
}

#Function for modulus
function modulus {
num1=$1
num2=$2
result=$((num1%num2))
echo "Result: $result"
echo "Is prime: $(is_prime $result)"
echo "Odd/Even: $(is_odd_even $result)"
echo "Divisible by 5: $(is_div_by_five $result
}
