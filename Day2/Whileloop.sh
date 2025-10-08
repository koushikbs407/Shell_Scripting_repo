
num1=10
num2=20

while [ $num1 -lt $num2 ] && [ $num1 -lt 15 ]
do
        echo "$num1"
        ((num1 = num1+1))
done
echo "while loop is completed"

