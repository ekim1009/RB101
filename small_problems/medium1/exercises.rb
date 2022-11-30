=begin # 1 
rotation (part 1)
write a method that takes an array
returns a new array with the same elements but with the first index element at the last index
may not use array#rotate or array#rotate!
P: input: array
   output: a new array with same elements but with element at index 0 now at index -1
D/A: initialize a variable to first indexed element
     initialize a variable to last indexed element
     initialize a new array
     iterate through array
     append last indexed variable to new array, rest of the elements from original array from index 1 to -2
     append first indexed element
     return
=end

# def rotate_array(array)
#   new_arr = []
#   first = array[0]
#   middle = array[1..-1]
#   new_arr << middle
#   new_arr << first
#   new_arr.flatten!
# end

# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]                 # => true

=begin # 2
rotation (part 2)
write a method that takes two integer arguments
returns the first integer argument with the - indexed element of the second integer argument brought to the end of the array
P: input: two integers
   output: first integer with the second indexed - integer element moved to the end of the integer
D/A: iterate through the first integer argument
     find the integer at - indexed second argument 
     move that integer to the end of the integer
=end

# def rotate_rightmost_digits(first, second)
#   integer = 0
#   p strings = first.to_s.chars
#   p move = strings[-second].to_i
#   p first
# end

# p rotate_rightmost_digits(735291, 1)# == 735291
# p rotate_rightmost_digits(735291, 2)# == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917

=begin # 3
rotation (part 3)
=end

=begin # 4
1000 lights
=end

=begin # 5
diamonds!
write a method that takes one integer argument
returns a 4-pointed diamond in an n x n grid, where n is the integer argument (can assume it will always be odd)
P: inout: integer
   output: a diamond shape with the integer argument being the total number of rows
D/A: 
=end

=begin # 6
stack machine interpratation
=end

=begin # 7
word to digit
=end

=begin # 8
fibonacci numbers (recursion)
=end

=begin # 9
fibonacci numbers (procedural)
=end

=begin # 10
fibonacci numbers (last digit)
=end