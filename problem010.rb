=begin	
Q: The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
Find the sum of all the primes below two million.

Ans: Prime.each(num) -> will give the prime numbers between 1 to num, we then iterate and add to sum.

=end
require 'prime'
sum = 0
Prime.each(2000000) do |p|
    sum = sum+p
end
puts sum