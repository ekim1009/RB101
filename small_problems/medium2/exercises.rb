=begin # 1
longest sentence
Write a method that will print the longest sentence in a text and print the number of words in the longest sentence
P: input: text
   output: string and integer.
E: outputs: The longest sentence in the above text is the last sentence; it is 86 words long.
   rules:
    implicit: need to take into account the number of sentences along with number of words.
    explicit: The ending of a sentence is marked by '.', '!', or '?'
              Any sequence of characters that are not spaces or sentence ending characters should be treated as words.
              e.g.'--' is counted as a word.
A: 
- helper method:
  - write a method that takes a string and outputs the number of words in that string.
    - initialize a variable number_of_words = 0
    - split the string into an array of strings
    - iterate through the array and increment number_of_words at each increment.
    - return number_or_words
- initialize a variable sentences and set it to the return value of..
  - split the input string wherever there is a '.', '!', '?'
- initialize a variable numbers = [] => going to use to append the number of words in each sentence
- iterate through the array
  - call the helper method and pass in the current element as the argument 
  - append the return value to numbers array
- find the index of the largest integer in the numbers array
- using string interpolation, return the sentence at the index of the largest integer along with the integer
=end

# def number_of_words(string)
#   number_words = 0
#   array_of_words = string.split
#   array_of_words.each { |word| number_words += 1 }
#   number_words
# end

# def longest_sentece(string)
#   sentences = string.split(/\.|\?|!/)
#   numbers = []
#   sentences.each { |string| numbers << number_of_words(string) }
#   index = numbers.each_with_index.max.last
#   longest_sentence = sentences[index]
#   puts "#{longest_sentence}"
#   puts "contains #{numbers.each_with_index.max.first} words"
# end

# p longest_sentece("Hello there. Sir! buy?")

=begin # 2
now i know my abc's
write a method that return true if the word passed in as an argument can be spelled
from this set of block, false if otherwise
  input: string
  output: boolean
examples:
  block_word?('BATCH') == true
  block_word?('BUTCH') == false => uses both letters in the 'H:U' block
  block_word?('jest') == true
  explicit: You cannot use both letters in a single block
  implicit: Case does not matter
D/A: 
- initialize `block_array` with the given block set as strings
- split the given string into an array of upcased strings
- iterate through the array of upcased strings
  - find the index of the block where the letter is found in the `block_array`
- iterate through the `block` array and see if any strings are repeated
  - if any string is repeated, return `false`
  - if no number is repeated, return `true`
=end

# def block_word?(string)
#   block_array = ['B:O', 'X:K', 'D:Q', 'C:P', 'N:A', 'G:T', 'R:E', 'F:S', 'J:W', 'H:U', 'V:I', 'L:Y', 'Z:M']
#   array_of_strings = string.upcase.split('')
#   included_blocks = array_of_strings.map do |letter| 
#     block_array.select do |word|
#       if word.include?(letter)
#         block_array.index(word)
#       end
#     end
#   end
#   if (included_blocks.flatten! == included_blocks.uniq) && !repeated?(included_blocks)
#     return true
#   else
#     false
#   end
# end

# def repeated?(array)
#   array.any? {|string| array.count(string) >= 2}
# end

# p block_word?('BATCH') == true
# p block_word?('BUTCH') == false
# p block_word?('jest') == true

=begin # 3
lettercase percentage ratio
write a method that takes a string and returns a hash that contains 3 entries: 
percentage of characters in the string that are lowercase letters
percentage of characters that are uppercase letters
percentage of characters that are neither

P:
  input: string
  output: hash
E:
  letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
  letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
  letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
  
  explicit: hash with three key-value pairs
  implicit: spaces in strings are considered to be in the 'neither' category

D/A:
- initialize an array of lowercase letters
- initialize an array of uppercase letters
- split the string into an array of single letter strings (make sure to include spaces)
- initialize a new hash
- iterate through the split array
  - if the hash includes the value, increment value by 1,
  - if the hash does not include the value, set key and value
-iterate through the hash and change the values into percentages

helper method:
- take the values of the given hash,
  - find the sum
- iterate through the array of values
  - divide the float number by sum 
  - then multiply by 100
=end

# def average(hash)
#   sum = hash.values.sum
#   hash.each {|k, int| hash[k] = (int.to_f / sum) * 100}
# end

# def letter_percentages(string)
#   lowercase = ('a'..'z').to_a
#   uppercase = ('A'..'Z').to_a
#   hash = {:lowercase => 0, :uppercase => 0, :neither => 0}
#   array = string.split('')
#   array.each do |let|
#     if lowercase.include?(let)
#       hash[:lowercase] += 1
#     elsif uppercase.include?(let)
#       hash[:uppercase] += 1
#     else
#       hash[:neither] += 1
#     end
#   end
  
#   average(hash)
# end

# p letter_percentages('abCdef 123')# == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
# p letter_percentages('AbCd +Ef')# == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
# p letter_percentages('123')# == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

=begin # 4
matching parantheses?
write a method that takes a string as an argument and returns true if all parentheses
in the string are properly balanced, false otherwise.  
P: 
  input: string
  output: boolean
E: 
  balanced?('What (is) this?') == true
  balanced?('What is) this?') == false
  balanced?('What (is this?') == false
  balanced?('((What) (is this))?') == true
  balanced?('((What)) (is this))?') == false
  balanced?('Hey!') == true
  balanced?(')Hey!(') == false
  balanced?('What ((is))) up(') == false
  rules:
    - if there are no parentheses, return true
    - order of the parentheses matter, )( will return false
    - parentheses must occur in matching pairs
    - the first parentheses that should appear is the opening parentheses '('
    - the last parentheses that should appear is the closing parentheses ")"
    - the number of opening and closing parentheses should be equal in number
D:
A:
  - initialize a new hash (0)
  - sub all letter characters from the string to ''
  - split the sentence into individual characters
  - iterate through the array of strings 
    - if the character matches the opening parentheses, increment the value by 1
    - if the character matches the closing parentheses, increment the value by 1
  - compare the values of the two keys in the hash
    - if they are equal, return true
    - if they are not equal, return false
=end

# def balanced?(string)
#   hash = Hash.new(0)
#   opening = []
#   closing = []
#   array = string.split('')
  
#   array.each_with_index do |word, idx|
#     if word == '('
#       hash['('] += 1
#       opening << [idx]
#     elsif word == ')'
#       hash[')'] += 1
#       closing << [idx] 
#     end
#   end

#   if opening.empty? && closing.empty? && hash.empty?
#     return true
#   elsif hash['('] == hash[')'] && opening.flatten.last < closing.flatten.last 
#     return true
#   else
#     false
#   end
# end
  
# p balanced?('What (is) this?') == true
# p balanced?('What is) this?') == false
# p balanced?('What (is this?') == false
# p balanced?('((What) (is this))?') == true
# p balanced?('((What)) (is this))?') == false
# p balanced?('Hey!') == true
# p balanced?(')Hey!(') == false
# p balanced?('What ((is))) up(') == false

=begin # 5
triangle sides
write a method that takes the length of the 3 sides of a triangle as an argument
return a symbol depending on whether the triangle is equilateral, isosceles, scalene, or invalid

P: 
  input: three integers
  output: symbol (:equilateral, :isosceles, :scalene, :invalid)
E: 
  triangle(3, 3, 3) == :equilateral 
  triangle(3, 3, 1.5) == :isosceles 
  triangle(3, 4, 5) == :scalene 
  triangle(0, 3, 3) == :invalid 
  triangle(3, 1, 1) == :invalid 
  
  rules: 
  - numbers must be greater than 0
  - :equilateral: all three numbers are equal
  - :isosceles: two numbers are equal and greater than the third
  - :scalene: all three numbers are different

D: 

A: 
- compare the three integers
  - if any on of the integers is 0, return :invalid
  - if all three numbers are equal, return :equlateral
  - if two numbers are equal and greater than the third, return :isosceles
  - if all three numbers are different and greater than 0, return :invalid

=end

# def triangle(num1, num2, num3)
#   triangle = [num1, num2,  num3].sort
#   return :isosceles if num1 == num2 && num1 > num3
#   return :equilateral if num1 == num2 && num2 == num3
#   return :scalene if num1 < num2  && num2 < num3 
#   return :invalid
# end

# p triangle(3, 3, 3) == :equilateral
# p triangle(3, 3, 1.5) == :isosceles
# p triangle(3, 4, 5) == :scalene
# p triangle(0, 3, 3) == :invalid
# p triangle(3, 1, 1) == :invalid

=begin # 6
tri-angles
write a method that takes the 3 angles of a triangle as arguments, and returns a symbol
:right, :acute, :obtuse, or :invalid depending on whether the triangle is right, acute, 
obtuse, or an invalid triangle

P:
  input: three integers
  output: symbol (:right, :acute, :obtuse, :invalid)
  
E: 
  triangle(60, 70, 50) == :acute
  triangle(30, 90, 60) == :right
  triangle(120, 50, 10) == :obtuse
  triangle(0, 90, 90) == :invalid
  triangle(50, 50, 50) == :invalid
  
  rules: 
    - right triangle - one of the angles is 90
    - acute triangle - all three of the angles are less than 90
    - obtuse triangle - one angle is greater than 90
    - 0 angle returns :invalid
D/A: 
- initialize a variable that points to all three integers in an array
  - sort the array
- iterate through the array
  - if all three integers are less than 90, and sum == 180, return :acute
  - if only one integer is 90, and sum == 180 return, :right
  - if one integer is greater than 90, and sum == 180, return :obtuse
- everything else returns :invalid
=end

# def triangle(num1, num2, num3)
#   angles = [num1, num2, num3].sort
#   return :invalid if angles.any? { |int| int == 0 }
#   return :acute if angles.all? { |int| int < 90 } && num1 != num2 && angles.sum == 180
#   return :right if angles.any? { |int| int == 90 } && angles.sum == 180
#   return :obtuse if angles.any? { |int| int > 90 } && angles.sum == 180
#   return :invalid 
# end

# p triangle(60, 70, 50) == :acute
# p triangle(30, 90, 60) == :right
# p triangle(120, 50, 10) == :obtuse
# p triangle(0, 90, 90) == :invalid
# p triangle(50, 50, 50) == :invalid

=begin # 7
unlucky days
write a method that returns the number of friday the 13ths in the year given by an argument.
you may assume that the year is greater than 1752.

P:
  input: integer
  output: integer (number of friday the 13th in that given year)
E:
  friday_13th(2015) == 3
  friday_13th(1986) == 1
  friday_13th(2019) == 2
A:
  - initialize a 
=end

=begin # 8
next featured number higher than a given value
write a method that takes a single integer as an argument, and returns the next
featured number that is greater than the argument.  return an error message if
there is no next featured number
P:
  input: integer
  output: integer (or error message)
E:
  featured(12) == 21
  featured(20) == 21
  featured(21) == 35
  featured(997) == 1029
  featured(1029) == 1043
  featured(999_999) == 1_023_547
  featured(999_999_987) == 1_023_456_987
  
  featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
  rules: featured number - is an odd number that is a multiple of 7, and whose digits occur exactly once each
  - the number needs to be odd
  - each digit in the integer must be unique
  - must be a multiple of 7
A:
multiple of 7?:
- return true if given integer / 7 == 0

unique digits?:
- split the integer into an array of single digit integers.
- return true if the array and uniq array are equal, false otherwise

Main method:
- see if the integer is odd?, a multiple of 7, and all digits are unique,
  - if it is not, keep adding one to the integer until all the conditions are met
- return the number
- if there is no next featured number, output an error message
=end

# def multiple_of_7?(int)
#   int % 7 == 0
# end

# def unique_digits?(int)
#   int.digits.uniq == int.digits
# end

# def featured(int)
#   return "There is no possible number that fulfills those requirements" if int >= 9_876_543_210
#   loop do
#     int += 1
#     break if multiple_of_7?(int) && unique_digits?(int) && int.odd?
#   end
#   int
# end

# p featured(12) == 21
# p featured(20) == 21
# p featured(21) == 35
# p featured(997) == 1029
# p featured(1029) == 1043
# p featured(999_999) == 1_023_547
# p featured(999_999_987) == 1_023_456_987
# p featured(9_999_999_999) == 'There is no possible number that fulfills those requirements'


=begin # 9
bubble sort
write a method that will sort an array of objects
P:
  input: array of objects
  output: the array of objects sorted
E: 
  array = [5, 3]
  bubble_sort!(array)
  array == [3, 5]
  
  array = [6, 2, 7, 1, 4]
  bubble_sort!(array)
  array == [1, 2, 4, 6, 7]
  
  array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
  bubble_sort!(array)
  array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
  
D/A:
- initialize an index variable
- iterate through the array
  - compare element at index position and the following element, 
    - if the element on the left is greater, destructively swap the two elements.
    - if they are the same, move on to the next element at index + 1
  - once first iteration is complete, iterate through mutated array
    - compare element at index position and the following element
      - if the element on the left is greater, destructively swap the two elements.
      - if they are the same, move on to the next element at index + 1
  - continue this until no more elements are swapped.
=end

# def bubble_sort!(array)
  
# end

# array = [5, 3]
# bubble_sort!(array)
# array == [3, 5]

# array = [6, 2, 7, 1, 4]
# bubble_sort!(array)
# array == [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# bubble_sort!(array)
# array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

=begin # 10
sum square-square sum
=end