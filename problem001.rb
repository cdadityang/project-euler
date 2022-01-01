=begin
Q: If we list all the natural numbers below 10 that 
  are multiples of 3 or 5, we get 3, 5, 6 and 9. 
  The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below 1000.

Explaination: Just iterate from 1 to 999, add numbers that are divisible by 3 || 5.
=end

# Method 1:
sum = 0

(1...1000).each { |n| sum += n if n % 3 == 0 || n % 5 == 0 }

puts "Method 1: #{sum}"


# Method 2: 
puts "Method 2: #{ (1...1000).reduce(0) { |summ, nn| nn % 3 == 0 || nn % 5 == 0 ? summ += nn : summ } }"


# Method 3:
all_multiples = (1...1000).select { |nnn| nnn % 3 == 0 || nnn % 5 == 0 }
puts "Method 3: #{ all_multiples.reduce(:+) }"