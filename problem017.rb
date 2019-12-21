=begin
Q: If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

Ans:
1. We make 3 arrays as below. From 1 - 20 we'll directly count the members.
2. From 20 to 99 -> We'll use 2 arrays at a time, Ex: 21 -> tens[21/10 -> 2] - this will use "twenty" from array and ones[21%10 -> 1] uses "one" from ones array. 
3. From 100 to 110 -> We'll use 2 arrays at a time -> ones[n/100] + 10 + ones[n%100] -> We've added +10 in between because all numbers will have "hundred and".
4. We'll use teens array for 110 to 120. 
5. From 120 - 199 -> We'll use 3 arrays at a time. ones, tens and ones again.
6. We'll follow same as above for 200 - 999. 
7. At final we did sum = sum - 27 + 11. Explanation: For Hundreds 100,200,300 till 900 The above code will generate one hundred and, two hundred and etc. So we need to remove these "and" from these 9 numbers. so 9*3 = 27. one thousand is of 11 chars so + 11
=end

ones = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
tens = ["", "", "twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eighty", "ninty"]
teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
sum = 0
(1..999).each do |n|
  if n < 10
    sum += ones[n].length
  elsif n < 20
    sum += teens[n%10].length
  elsif n < 100
    sum += tens[(n/10).round].length + ones[n%10].length
  elsif n < 110
    sum += ones[n/100].length + 10 + ones[n%100].length
  elsif n < 120
    sum += ones[n/100].length + 10 + teens[n%10].length
  elsif n < 200
    sum += ones[n/100].length + 10 + tens[((n%100)/10).round].length + ones[n%10].length
  elsif n < 210
    sum += ones[n/100].length + 10 + ones[n%100].length
  elsif n < 220
    sum += ones[n/100].length + 10 + teens[n%10].length
  elsif n < 300
    sum += ones[n/100].length + 10 + tens[((n%100)/10).round].length + ones[n%10].length
    elsif n < 310
    sum += ones[n/100].length + 10 + ones[n%100].length
  elsif n < 320
    sum += ones[n/100].length + 10 + teens[n%10].length
  elsif n < 400
    sum += ones[n/100].length + 10 + tens[((n%100)/10).round].length + ones[n%10].length
  elsif n < 410
    sum += ones[n/100].length + 10 + ones[n%100].length
  elsif n < 420
    sum += ones[n/100].length + 10 + teens[n%10].length
  elsif n < 500
    sum += ones[n/100].length + 10 + tens[((n%100)/10).round].length + ones[n%10].length
  elsif n < 510
    sum += ones[n/100].length + 10 + ones[n%100].length
  elsif n < 520
    sum += ones[n/100].length + 10 + teens[n%10].length
  elsif n < 600
    sum += ones[n/100].length + 10 + tens[((n%100)/10).round].length + ones[n%10].length
  elsif n < 610
    sum += ones[n/100].length + 10 + ones[n%100].length
  elsif n < 620
    sum += ones[n/100].length + 10 + teens[n%10].length
  elsif n < 700
    sum += ones[n/100].length + 10 + tens[((n%100)/10).round].length + ones[n%10].length
  elsif n < 710
    sum += ones[n/100].length + 10 + ones[n%100].length
  elsif n < 720
    sum += ones[n/100].length + 10 + teens[n%10].length
  elsif n < 800
    sum += ones[n/100].length + 10 + tens[((n%100)/10).round].length + ones[n%10].length
  elsif n < 810
    sum += ones[n/100].length + 10 + ones[n%100].length
  elsif n < 820
    sum += ones[n/100].length + 10 + teens[n%10].length
  elsif n < 900
    sum += ones[n/100].length + 10 + tens[((n%100)/10).round].length + ones[n%10].length
  elsif n < 910
    sum += ones[n/100].length + 10 + ones[n%100].length
  elsif n < 920
    sum += ones[n/100].length + 10 + teens[n%10].length
  elsif n < 1000
    sum += ones[n/100].length + 10 + tens[((n%100)/10).round].length + ones[n%10].length
  end
end
sum = sum - 27 + 11
puts sum