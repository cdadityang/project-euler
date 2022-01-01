=begin
Q: By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
  we can see that the 6th prime is 13. What is the 10 001st prime number?

Ans: Prime.first(num) will return all the prime numbers from 2 to num as an array.
  So we can pick the last one of that array directly to get our answer.

=end

# Method 1: Fastest + cheating
require 'prime'
puts Prime.first(10001).last


# Method 2: Fastest + little cheating
pr = 0

Prime.each_with_index do |n, i|
  if i == 10000
    pr = n
    break
  end  
end

puts pr


# Method 3: Slowest + no cheating
def is_prime?(num)
  return false if num < 2

  (2..num/2).none? { |m| num % m == 0 }
end

arr = []
(2..).each do |n|
  arr << n if is_prime?(n)
  break if arr.length == 10001
end

puts arr.last