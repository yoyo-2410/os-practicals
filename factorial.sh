read -p "Enter the number to find the factorial: " num
fact=1
for ((i=1; i<=num; i++)); do
    ((fact*=i))
done
echo "Factorial of the given number is: $fact"
