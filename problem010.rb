=begin	
Q: The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
Find the sum of all the primes below two million.

Ans: Prime.each(num) -> will give the prime numbers between 1 to num, we then iterate and add to sum.

=end

# Method 1: Fastest + cheating

require 'prime'
sum = 0
Prime.each(2000000) do |p|
    sum = sum+p
end
puts sum

# Method 2: Very Slowest + non cheating -> Don't do this
## No need to loop through each one to check for prime See Method 3
def is_prime?(num)
  return false if num < 2

  (2..num/2).none? { |m| num % m == 0 }
end


sum_m2 = 0
(2..2000000).each do |n|
  sum_m2 += n if is_prime?(n)
end

puts sum_m2


# Method 3: Fastest + No cheating + Recommended, We use concept of sieve
def sieve(max)
  # Full array
  primes = (0..max).to_a

  # 0, 1 are not primes, so make it nil
  primes[0] = primes[1] = nil

  primes.each do |pp|
    # Move to next if something is nil
    next unless pp

    # Break if pp * pp > max, this is because it will not have prime further
    break if pp * pp > max

    # Now move in steps, make nil of whatever is divisible
    (pp*pp).step(max, pp) { |m| primes[m] = nil }
  end

  # At last we'll only be with non-divisible number i.e. primes
  ## remove all nil from array
  primes.compact
end

puts sieve(2000000).reduce(:+)