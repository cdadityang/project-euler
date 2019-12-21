=begin
Q: The prime factors of 13195 are 5, 7, 13 and 29. What is the largest prime factor of the number 600851475143 ?

Ans: prime_division(num) -> gives 2D array of a number that are divisble by prime numbers. We can obtain 1st index to get our ans.

=end

require 'prime'
Prime.prime_division(600851475143).last[0]