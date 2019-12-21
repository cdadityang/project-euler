=begin
Q: A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
Find the largest palindrome made from the product of two 3-digit numbers.

Ans: We'll iterate from 100 to 999 as they are 3 digits numbers, then multiply each of them, convert to string and compare for Palindrome by .reverse of string, then finally store it in "lar" variable if that multiplication is large

=end

timer_start = Time.now
lar = 0
fnum = 0
num1 = 0
num2 = 0
(100..999).each do |n|
  (100..999).each do |m|
    fnum = n*m
    fstr = fnum.to_s
    if(fnum > lar && fstr == fstr.reverse)
      lar = fnum
      num1 = n
      num2 = m
    end
  end
end
puts "#{num1} * #{num2} = #{lar}"
puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"