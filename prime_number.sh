echo "Prime number checking"
read -p "Enter a number: " n
if (( n < 2 )); then
    echo "$n is not a prime number."
    exit
fi
for ((i=2; i<=n/2; i++)); do
    ((n%i==0)) && { echo "$n is not a prime number."; exit; }
done
echo "$n is a prime number"
