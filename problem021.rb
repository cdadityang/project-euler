=begin
Q: Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.
For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
Evaluate the sum of all the amicable numbers under 10000.

Ans: I came up with method 1, but solution takes about 8 secs to solve on repl, this is due to the method "devisors" - it divides the given number to everything between (1..num) and then checks the divisibility and stores it to an array and returns that array. Then We match every number as the function given in question.

# Method 2 - To make code more faster, i found the "divisors_with_sum" method on internet. The code now runs in less than 500 milliseconds.

=end

# Method 1
def divisors(num)
  div = 1
  divisors_arr = []
  while div < num do
    if num%div == 0
      divisors_arr << div
    end
    div += 1
  end
  divisors_arr
end

final_arr = []
(1..10000).each do |n|
  sum1 = 0
  sum2 = 0
  arr1 = divisors(n)
  arr1.each { |n| sum1 += n }
  arr2 = divisors(sum1)
  arr2.each { |n| sum2 += n }
  if n == sum2 && n != sum1
    final_arr << n
  end
end
final_sum = 0
final_arr.each { |n| final_sum+=n  }
puts final_sum


# Method 2
def divisors_with_sum(n)
  sum = 1
  (2..Math.sqrt(n)).each do |i|
      sum += n / i + i if n % i == 0
    end
  sum
end

final_arr = []
(1..10000).each do |n|
  sum1 = 0
  sum2 = 0
  arr1 = divisors_with_sum(n)
  arr2 = divisors_with_sum(arr1)
  if n == arr2 && n != arr1
    final_arr << n
  end
end

final_sum = 0
final_arr.each { |n| final_sum+=n  }
puts final_sum