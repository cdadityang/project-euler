=begin
Q: The Fibonacci sequence is defined by the recurrence relation:
Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
Hence the first 12 terms will be:
F1 = 1
F2 = 1
F3 = 2
F4 = 3
F5 = 5
F6 = 8
F7 = 13
F8 = 21
F9 = 34
F10 = 55
F11 = 89
F12 = 144
The 12th term, F12, is the first term to contain three digits.
What is the index of the first term in the Fibonacci sequence to contain 1000 digits?

Ans: We'll do brute-force checking here, we'll find the fibonacci number of everything and then change it to an array and split it to count the number of digits. If count is 1000, then it breaks out of the loop and we can get the index which will be stored in variable "final"

=end
n1 = 1
n2 = 1
next_num = 0
final = 0
(1..10000).each do |n|
  n1 = n2
  n2 = next_num
  next_num = n1+n2
  an = next_num.to_s
  if (an.split("")).count == 1000
    final = n
    break
  end
end
puts final