=begin #1
repeat yourself
write method that takes two arguments - string and positive integer
prints the string as many times as the integer
=end

# def repeat(string, integer)
#   integer.times do
#     puts string
#   end
# end

# repeat("Hello there", 5)

=begin #2
odd
write a method that takes one integer argument (pos, neg, or zero)
returns true if absolute value is odd
=end

# def is_odd?(integer)
#   if integer % 2 != 0
#     puts true
#   else
#     puts false
#   end
# end

# is_odd?(2)
# is_odd?(5)
# is_odd?(-17)
# is_odd?(-8)
# is_odd?(0)
# is_odd?(7)

=begin #3
list of digits
write a method that takes one positive integer
returns a list of the digits in the number
=end

# def digit_list(number)
#   number.digits.reverse
# end

# puts digit_list(12345)
# puts digit_list(7)
# puts digit_list(375290)
# puts digit_list(444)   

=begin #4
how many?
write a method that counts the number of occuences of each element in a given array
the words in the array are case-sensitive.  once couned, print each element alongside the number of occurences
=end

# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# def count_occurrences(array)
#   occurences = {}
  
#   array.uniq.each do |element|  
#     occurences[element] = array.count(element)
#   end
  
#   occurences.each do |element, count|
#     puts "#{element} => #{count}"
#   end
# end

# count_occurrences(vehicles)

=begin #5
reverse it (part 1)
write a method that takes on argument, a string, and returns a new string with the words in reverse order
=end

# def reverse_sentence(string)
#   string.split.reverse.join(' ')
# end

# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# puts reverse_sentence('') == '''
# puts reverse_sentence('    ') == '' # Any number of spaces results in ''

=begin #6
reverse it (part 2)
write a method that takes one argument, a string
returns the given string with words that contain 5 or more characters reversed
=end

# def reverse_words(string)
#   words = []
  
#   string.split.each do |word|
#     word.reverse! if word.length >= 5
#     words << word
#   end
  
#   words.join(' ')
# end

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

=begin #7
stringy strings
method that takes one argument, a positive integer
returnds a string of alternating 1's and 0's always starting with 1
length of string shoud match the given integer
=end

# def stringy(integer)
#   numbers = []
  
#   integer.times do |index|
#     number = index.even? ? 1 : 0
#     numbers << number
#   end
  
#   numbers.join
# end

# puts stringy(6)# == '101010'
# puts stringy(9)# == '101010101'
# puts stringy(4)# == '1010'
# puts stringy(7)# == '1010101'

=begin #8
array average
method that takes one argument, an array containing integers
returns the average of all numbers in the array
array will never be empty and will always be positive
result should also be an integer
=end

# def average(array)
#   total = 0
  
#   array.each do |number|
#       total += number
#   end
  
#   average = total / array.size
# end

# puts average([1, 6])# == 3 # integer division: (1 + 6) / 2 -> 3
# puts average([1, 5, 87, 45, 8, 8])# == 25
# puts average([9, 47, 23, 95, 16, 52])# == 40

=begin #9
sum of digits
method that takes one argument, a positive integer
returns the sum of its digits
=end

# def sum(number)
#   sum = 0
#   num_string = number.to_s.chars
  
#   num_string.each do |str_digit|
#     sum += str_digit.to_i
#   end
#   sum
# end

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

=begin #10
what's my bonus?
method that takes two arguments, a positive integer and a boolean
calculates the bonus for a given salary
if boolean is true, bonus should be half of the salary
if boolean is false, bonus should be 0
=end

def calculate_bonus(number, boolean)
  bonus = 0
  if boolean 
    bonus += number / 2
  else 
    bonus = 0
  end
  bonus
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000


