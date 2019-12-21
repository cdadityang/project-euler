=begin
Q: n! means n × (n − 1) × ... × 3 × 2 × 1
For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
Find the sum of the digits in the number 100!

Ans: The problem is simple, we jsut find the factorial of a number, convert it to the string, split it to an array and then add each elements of that array! The factorial method may be tricky  but it's simple and self-explanatory.

=end

def factorial(n)
  if n == 0
    1
  else
    n * factorial(n-1)
  end
end
arr = factorial(100).to_s.split("")
sum = 0
arr.each { |n| sum += n.to_i  }
puts sum