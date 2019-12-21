=begin

Q: 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

Ans: The Below takes a lot of time, Logic is simple. Find Another Way!

=end

arr1 = []
(1..1000000000).each do |num|
    if(num%2 == 0 && num%3 == 0 && num%4 == 0 && num%5 == 0 && num%6 == 0 && num%7 == 0 && num%8 == 0 && num%9 == 0 && num%10 == 0 && num%11 == 0 && num%12 == 0 && num%13 == 0 && num%14 == 0 && num%15 == 0 && num%16 == 0 && num%17 == 0 && num%18 == 0 && num%19 == 0 && num%20 == 0)
        arr1 << num
    end
end
arr1