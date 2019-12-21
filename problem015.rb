=begin
Q: Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
//See Image on website
How many such routes are there through a 20×20 grid?

Ans: The formula is (rows+cols)!/(rows! * cols!). Work out more

=end

class Integer
    def factorial
        mul = 1
        self.downto(1) { |n| mul *= n}
        return mul
    end
end
rows = 20
cols = 20
ans = ((rows+cols).factorial)/(rows.factorial * cols.factorial)
puts ans