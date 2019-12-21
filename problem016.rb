=begin
Q: 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
What is the sum of the digits of the number 21000?

Ans: Simple Problem, First we do 2^1000 -> We'll convert it to string -> Split char that string and result will be in array with each char as 1 element. We then loop through that array and add each element.

=end
sum = 0
power = (2**1000).to_s.split("")
power.each do |n|
  sum += n.to_i
end
puts sum