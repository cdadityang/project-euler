=begin
Q: A unit fraction contains 1 in the numerator. The decimal representation of the unit fractions with denominators 2 to 10 are given:

1/2	= 	0.5
1/3	= 	0.(3)
1/4	= 	0.25
1/5	= 	0.2
1/6	= 	0.1(6)
1/7	= 	0.(142857)
1/8	= 	0.125
1/9	= 	0.(1)
1/10	= 	0.1
Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can be seen that 1/7 has a 6-digit recurring cycle.
Find the value of d < 1000 for which 1/d contains the longest recurring cycle in its decimal fraction part.

Ans: I tried to solve on my own, but after long time i had to copy it from online - http://johnnycoder.com/blog/2010/07/21/project-euler-26-ruby/ . According to wikipedia - Link - https://en.wikipedia.org/wiki/Repeating_decimal#Cyclic_numbers - 
"A fraction which is cyclic thus has a recurring decimal of even length that divides into two sequences in 9's complement form. For example 1/7 starts '142' and is followed by '857' while 6/7 (by rotation) starts '857' followed by its 9's complement '142'.
A proper prime is a prime p which ends in the digit 1 in base 10 and whose reciprocal in base 10 has a repetend with length p-1. In such primes, each digit 0, 1, {\displaystyle \ldots } {\displaystyle \ldots }, 9 appears in the repeating sequence the same number of times as does each other digit (namely, (p-1)/10 times)"

=end

def recurring_cycle_length(n)
  return 0 if n % 2 == 0 or n % 5 == 0
  i = 1
  until (((10**i) - 1) % n) == 0 do
    i += 1
  end
  i
end
num = 0
max_length = 0
 
(1..1000).each { |x| 
  break if x >= 1_000
   
  rcl = recurring_cycle_length(x)
  if rcl > max_length    
    max_length, num = rcl, x
  end
}
puts "Lenght: #{max_length}"
puts "Number: #{num}"