=begin # 1
cute angles
write a method that takes a floating point number that represents an angle between 0 and 360 degrees
return a string that represents that angle in degrees, minutes, and seconds
use the degree symbol to represent degrees
use a single quote to represent minutes
use double qupte to represent seconds
a degree has 60 minutes while a minute has 60 seconds
P: 
  input: float integer
  output: string that represents the degree, minutes, and seconds
E:
  implicit: if the minutes or seconds are 0, use 00.  can use 0 for degree
            the degree seems to use just whole number no matter the decimal
  explicit: want all three formats with no spacing in between
            use two digit numbers with leading 0's
            the ° is used for degree, ' is used for minutes, " is used for seconds
D/A:
  the whole unit will remain the same for the degree
  multiply the decimal portion(including the .) by 60, the whole number becomes the minutes
  the remainder (including the .) * 60 is the seconds
=end

# DEGREE = "\xC2\xB0"
# def dms(integer)
#   degree = integer.round
#   minutes = (integer % 1) * 60
#   seconds = (minutes % 1) * 60
#   puts "#{degree}#{DEGREE}#{minutes.round}'#{seconds.round}\""
    
# end

# p dms(30)# == %(30°00'00")
# p dms(76.73)# == %(76°43'48")
# p dms(254.6)# == %(254°36'00")
# p dms(93.034773)# == %(93°02'05")
# p dms(0)# == %(0°00'00")
# p dms(360)# == %(360°00'00") || dms(360) == %(0°00'00")

=begin # 2
delete vowels
write a method that takes an array of strings, and returns an array of the same string values,
except with the vowels (a, e, i, o, u) removed
P: input: an array of one more more strings
   output: an array of one or more strings with the vowels removed
E: implicit: 
   explicit: 
D/A: iterate through the array and see if there is more than one string
     iterate through the string 
     remove the vowels
     join back to original layout
=end

# def remove_vowels(array)
#   vowels = %w(a e i o u A E I O U)
#   array.map do |string|
#     a = string.chars.select do |letter|
#       letter if !vowels.include?(letter)
#     end
#     a.join
#   end
# end

# p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

=begin # 3
fibonacci number location by length
write a method that calculates and returns the index of the first Fibonacci number that has
the number of digits specified as an argument. the first Fibonacci number has index 1.
P: input: integer
   output: the index where the Fibonacci number is the same length as the argument provided
E: implicit:
   explicit:
D/A: have the Fibonacci create its numbers until the length of the number is the same as the argument
=end

# def find_fibonacci_index_by_length(integer)
#   first = 1
#   second = 1
#   index = 2
  
#   loop do
#     index += 1
#     fibonacci = first + second
#     break if fibonacci.to_s.size >= integer
    
#     first = second
#     second = fibonacci
#   end
  
#   index
# end

# p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# p find_fibonacci_index_by_length(10) == 45
# p find_fibonacci_index_by_length(100) == 476
# p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10000) == 47847

=begin # 4
reversed arrays (part 1)
write a method that takes an array as an argument, and reverses its elements in place;
that is, mutate the array passed into this method - not create a new one.
you may NOT use #reverse or #reverse!
P: input: array
   output: the same array with its elements reversed
E: implicit:
   explicit: reversing the order of each object - if it's a string, do not need to reverse the string itself
D/A: pop and unshift?
=end

# def reverse!(array)
#   left = 0
#   right = -1
  
#   while left < array.size / 2
#     array[left], array[right] = array[right], array[left]
#     left += 1
#     right -= 1
#   end
  
#   array
# end

# p reverse!([1, 2, 3, 4])
# p reverse!(%w(a b e d c))
# p reverse!(['abc'])
# p reverse!([])

=begin # 5
reversed arrays (part 2)
write a method that takes an array and returns a new array with the elements of the 
original list in reverse order.  do not modify the original list
you may not use array#reverse, array#reverse!, or the method you wrote above
=end

# def reverse(array)
#   new_array = []
#   array.reverse_each do |ele|
#     new_array << ele
#   end
#   new_array
# end

# p reverse([1,2,3,4])# == [4,3,2,1]          # => true
# p reverse(%w(a b e d c))# == %w(c d e b a)  # => true
# p reverse(['abc'])# == ['abc']              # => true
# p reverse([]) == []                        # => true

=begin # 6
combining arrays
write a method that takes two arrays as arguments, and returns an array that contains
all of the values from the argument arrays.  there should be no duplication of values in the returned array,
even if there are duplicates in the originall arrays
=end

# def merge(array1, array2)
#   array1.concat(array2).uniq!
# end

# p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

=begin # 7
halvsies
write a method that takes an array as an argument, and returns two arrays (as a pair of nested arrays)
that contain the first half and second half of the original array, respectively
if the original array contains an odd number of elements, the middle element should be place in the first half array
P: input: array
   output: nested array with half of the elements in each nested array
E: implicit: 
   explicit: if array contains an odd number of elements, middle element should be in first nested array
D: see how many elements are in the given array
   if the number of elements is even, split the elements in half
   if the number of elements is odd, split elements in half and add remaining element to the first nested array
=end

# def halvsies(array)
#   middle = (array.size / 2.0).ceil
#   first = array.slice(0, middle)
#   second = array.slice(middle, array.size - middle)
#   [first, second] 
# end

# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# p halvsies([5]) == [[5], []]
# p halvsies([]) == [[], []]

=begin # 8  
find the 
write a method that will find and return the duplicate value that is known to be in the array
P: input: array
   output: integer that is found twice in the array
E: inplicit:
   explicit:
D/A: sort array in ascending order
     iterate through the array and see if there are any values that are the same next to each other
=end

# def find_dup(array)
#   array.sort! 
#   array.detect { |int| array.count(int) > 1 }
# end

# p find_dup([1, 5, 3, 1]) == 1
# p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

=begin # 9
does my list include this?
write a method that takes an array and a value.  return true if the search value is in the array
return false if the search value is not in the array.  do not use #include? method
P: input: array and variable
   output: boolean
E: implicit:
   explicit: return a boolean
D/A: iterate through the array
     compare the variable with each element in the array
     return true if the variable exists in the array
     return false if the variable does not exist in the array
=end

# def include?(array, var)
#   array.any? do |ele|
#     ele == var
#   end
# end

# p include?([1,2,3,4,5], 3) == true
# p include?([1,2,3,4,5], 6) == false
# p include?([], 3) == false
# p include?([nil], nil) == true
# p include?([], nil) == false

=begin # 10
right triangles
write a method that takes a positive integer `n` as an argument
displays a right triangle whose sides each have `n` stars
=end

# from left to right
# def triangle(int)
#   star = '*'
#   count = 0
#   loop do
#     puts star * count
#     count += 1
#     break if count > int
#   end
# end

#from right to left
# def triangle(int)
#   space = int - 1
#   count = 1
  
#   int.times do |n|
#     puts (' ' * space) + ('*' * count)
#     space -= 1
#     count += 1
#   end
# end

# p triangle(5)
# p triangle(9)
