is_prime() {
num=$1
if [ $num -le 2 ]; then
return 1
fi
for ((i=2;i*i<num;i++)); do
if [ $((num%i)) -eq 0 ]; then
return 1
fi
done
return 0
}
read -p "Enter lower limit : " lower
read -p "Enter upper limit : " upper
for ((n=lower;n<=upper;n++)); do
if is_prime $n; then
echo -n "$n "
fi
done
