=begin
Q: You are given the following information, but you may prefer to do some research for yourself.
1 Jan 1900 was a Monday.
Thirty days has September,
April, June and November.
All the rest have thirty-one,
Saving February alone,
Which has twenty-eight, rain or shine.
And on leap years, twenty-nine.
A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

Ans: Ruby has many built-in methods & I love this language so much. I used Time class of ruby which has many methods like weekday, month day, year etc. I created instance of 01st Jan, 1901 as start_year and 31st Dec, 2000 as end_year. We loop through this. We can use any number above 365 for iteration inside (I used (1..366)) because whenever it's 31st Dec we are breaking out of loop. start_year + 86400 adds 1 day as there are 86400 seconds in a day. So we are iterating through each day and when ever there is a sunday and that to as 1st of the month, we add the count in "num_sunday". That's it.

=end
num_sunday = 0
start_year = Time.new(1901, 01, 01)
end_year = Time.new(2000, 12, 31)
((start_year.year)..(end_year.year)).each do |n|
  (1..366).each do |m|
    if start_year.wday == 0 && start_year.mday == 1
      num_sunday += 1
    end
    start_year += 86400
    if start_year.day == 31 && start_year.month == 12
      break;
    end
  end
end
puts num_sunday