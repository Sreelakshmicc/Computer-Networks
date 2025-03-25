echo "Enter a number:"
read num
org=$num
rev=0
n=${#org}
for((i=0;i<n;i++))
do
rem=$((num%10))
rev=$((rev*10+rem))
num=$((num/10))
done
if((org==rev))
then
	echo "$org palindrome"
else
	echo "$org not palindrome"	
fi
	
