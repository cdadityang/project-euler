=begin
Q: The sum of the squares of the first ten natural numbers is,
	12 + 22 + ... + 102 = 385
  The square of the sum of the first ten natural numbers is,
    (1 + 2 + ... + 10)2 = 552 = 3025
  Hence the difference between the sum of the squares of the first ten natural numbers
  and the square of the sum is 3025 − 385 = 2640.
  Find the difference between the sum of the squares of the first one hundred natural numbers
  and the square of the sum.

Ans: The logic is simple, just iterate from 1 to 100, and apply above formula.
  Both have same timings

=end

# Method 1:
time_start = Time.now
sum1, sum2, sum3 = 0,0,0
(1..100).each do |num|
    sum1 = sum1 + (num**2)
    sum2 = sum2 + num
    sum3 = sum2**2
end
puts "Method 1: #{sum3 - sum1}"
puts "#{(Time.now - time_start)*1000} ms"


# Method 2:
arr1 = (1..100).map { |n| n.pow(2) }
sum_arr1 = arr1.reduce(:+)

sum_each = (1..100).reduce(:+).pow(2)

puts "Method 2: #{sum_each - sum_arr1}"