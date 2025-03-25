is_prime() {
  local num=$1
  if [ $num -le 1 ]; then
    return 1
  fi
  for ((i=2; i<=num/2; i++)); do
    if [ $((num % i)) -eq 0 ]; then
      return 1
    fi
  done
  return 0
}

find_primes_in_range() {
  local start=$1
  local end=$2
  echo "Prime numbers between $start and $end:"
  for ((num=start; num<=end; num++)); do
    is_prime $num
    if [ $? -eq 0 ]; then
      echo $num
    fi
  done
}

echo "Enter the lower limit:"
read lower_limit
echo "Enter the upper limit:"
read upper_limit

# Call the function to find and display prime numbers
find_primes_in_range $lower_limit $upper_limit

