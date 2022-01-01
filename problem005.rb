=begin

Q: 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
  What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

Ans: Just keep looping in steps of 20, because a number not divisible by 20, we don't need it.
  Both method takes around 4 sec, good improvement from prev ans

=end

# Method 1: While
i = 20
final = 0
while i < Float::INFINITY do
  a = false
  (2..20).each do |n|
    if i % n != 0
      a = true
      break
    end
  end
  if !a
    final = i
    break
  end
  i += 20
end

puts "Method 1: #{ final }"


# Method 2: Each
final_m2 = 0
(20..).step(20).each do |n|
  a = false
  (2..20).each do |m|
    if n % m != 0
      a = true
      break
    end
  end

  if !a
    final_m2 = n
    break
  end
end

puts "Method 2: #{ final_m2 }"