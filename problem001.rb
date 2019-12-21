=begin
Q: If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below 1000.

Explaination: Just iterate from 1 to 999, add numbers that are divisible by 3 || 5.
=end

sum = 0
(1..999).select { |n| sum+=n if n%3 ==0 || n%5==0 }
puts sum