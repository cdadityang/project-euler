=begin
Q: A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a^2 + b^2 = c^2
For example, 32 + 42 = 9 + 16 = 25 = 52.
There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

Ans: We loop from 1 to 1000, by multiplying each number with 1 to 1000 numbers(we have nested "for" loop), then assign c = 1000-a-b as per question assumption. Then we'll print to product if there exists any and break out of loop.

=end

time_start = Time.now
product = 0
(1..1000).each do |a|
  ((a+1)..1000).each do |b|
    c = 1000 - (a + b)
    if(a*a + b*b == c*c)
      product = a*b*c
      break
    end
  end
  break if product != 0
end
puts product
puts "#{(Time.now - time_start)*1000} ms"