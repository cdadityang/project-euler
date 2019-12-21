=begin
Q: By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.

3
7 4
2 4 6
8 5 9 3
That is, 3 + 7 + 4 + 9 = 23.
Find the maximum total from top to bottom of the triangle below:
See from ans below

Ans: The concept is to iterate in triangle so that their will be maximum total at the end. I mis-understood the problem as i was finding the maximum from top to down and adding them such that they are adjacent to each other. THIS IS WRONG - We get ANS as 1064.
THE CORRECT WAY: We can move from downwards - top as it will be faster and efficient. We'll create grid in 3D array as each line will be it's 1st index and other index will be elements in each line. From bottom we'll compare every 2 elements and add it to the adjacent element's of it's top line. Like that we do till the top and final grid[0][0] will be final ans.

=end

str = "75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"

sum = 0
grid = str.lines.map{|line| line.split(' ').map{ |j| j.to_i }}
p grid
for i in (grid.length-1).downto(0) do
  index = 0
  (0..(grid[i].length - 2)).each do |n|
    arr = [grid[i][index], grid[i][index+1]]
    grid[i-1][0 + index] = arr.max + grid[i-1][0 + index]
    index += 1
  end
end
puts grid[0][0]