=begin
Q: A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:
012   021   102   120   201   210
What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?

Ans: Ruby Arrays has a permutation method which takes the integer as how much index, they are already sorted, so no need to sort the array again! We then convert them to array to make it 3D, then we extract Millionth element of that array and join.

=end

lex = [0,1,2,3,4,5,6,7,8,9].permutation(10).to_a
 
puts lex[1_000_000 - 1].join()