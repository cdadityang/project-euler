=begin
Q: The prime factors of 13195 are 5, 7, 13 and 29.
  What is the largest prime factor of the number 600851475143 ?

Ans: prime_division(num) -> gives 2D array of a number that are divisble by prime numbers.
  We can obtain 1st index to get our ans.

=end

# Method 1: Easiest + Fast + Cheating
require 'prime'

puts "Method 1: #{ Prime.prime_division(600851475143).last[0] }"


# Method 2: Fast + No cheating
## We iterate from 2...big_num with i, whenever i is divisible, we'll assign that as highest divisor
## Then again start from i = 2, if not divisible, continue

big_num = 600851475143

def largest_prime_factor(big_num)
  i = 2
  large_divisor = 0
  while i < big_num
    if big_num % i == 0
      large_divisor = i
      big_num = big_num / i
      i = 2
    else
      i += 1
    end
  end

  big_num
end

puts "Method 2: #{ largest_prime_factor(big_num) }"
