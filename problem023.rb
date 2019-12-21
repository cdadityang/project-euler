=begin
Q: A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.
A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.
As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.
Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

Ans: Like the previous sum, we take out the sum of divisors with this method! Then we'll find all the abundant numbers within the limit and put it in array "arr". Then we'll loop in 3D through this array to find sum of 2 abundant arrays < limit and put it in "arr2". Then we'll remove this elements from (1..limit) array so we can find the sum of elements of sum of two non abundant elements.

=end

def divisors_with_sum(n)
  return 0 if n == 1
  sum = 1 
    sqrt = Math.sqrt(n)
    (2..sqrt).each do |i|
      if n % i == 0
        sum += n / i if i != sqrt
        sum += i
      end
    end
  sum 
end
limit = 28123
arr = []
(1..limit).each do |n|
  if n < divisors_with_sum(n)
    arr << n
  end
end
arr2 = []
arr.each do |n|
  arr.each do |m|
    s = n + m
    break if s > limit
    arr2 << s
  end
end
arr3 = (1..limit).to_a - arr2
sum = 0
arr3.each do |n|
  sum += n
end
puts sum