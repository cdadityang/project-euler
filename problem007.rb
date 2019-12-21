=begin
Q: By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13. What is the 10 001st prime number?

Ans: Prime.first(num) will return all the prime numbers from 2 to num as an array. So we can pick the last one of that array directly to get our answer.

=end

require 'prime'
puts Prime.first(10001).last