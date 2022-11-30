=begin #1
welcome stranger
write a method that takes two arguments, one array and one hash
return a greeting that uses the person's full name and mentions the person's title and occupation
P: input: array containing two or more elements and hash containing two key/value pairs
E: implicit: 
   explicit: the elements in the array are the person's full name
D/A: array - iterate through the array and join then with spaces in between each element
     access the values to the keys
     return a string interpolation with values
=end

# def greetings(array, hash)
#   "Hello, #{array.join(' ')}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
# end

# p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }) == "Hello, John Q Doe! Nice to have a Master Plumber around."

=begin # 2
double doubles
write a method that returns 2 times the number provided as an argument,
unless the argument is a double number; double numbers should be returned as-is
P: input: integer
   output: twice the argument unless the argument is a double number
D/A: a double number is an integer with an even number of digits whose left-side digits are exactly the same as the right_side digits
     see if the integer given has an even or odd number of integers
     if odd, return twice the number
     if even, split the integer down the center and see if they are equal,
     if yes, return the number
     if no, return twice the number
=end

# def twice(integer)
#   string = integer.to_s
#   half = string.size / 2
#   return integer * 2 if string.size == 1
#   left, right = string[0..half - 1], string[half..string.size]         
#   return integer if left == right
#   return integer * 2
# end

# p twice(37) == 74
# p twice(44) == 44
# p twice(334433) == 668866
# p twice(444) == 888
# p twice(107) == 214
# p twice(103103) == 103103
# p twice(3333) == 3333
# p twice(7676) == 7676
# p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# p twice(5) == 10

=begin # 3
always return negative
write a method that takes a number
if the argument is a positive number, return the negative of that number
if the number is 0 or negative, return the original number
P: input: integer
   output: integer if integer <= 0
           negative of argument integer if the argument integer was a positive number
D/A: see if the integer given has a prefix of '-' or is a 0
     if yes, return integer
     if no, return the negative version of integer
=end

# def negative(integer)
#   return integer if integer <= 0
#   return -integer if integer > 0
# end

# p negative(5) == -5
# p negative(-3) == -3
# p negative(0) == 0      # There's no such thing as -0 in ruby

=begin # 4
counting up
write a method that takes an integer argument
return an array of all integers in sequence between 1 and the argument
P: input: integer
   output: an array of incrementing integers starting from 1 until given integer
D/A: initialize an array
     input integer into array with each increment until argument is reached
=end

# def sequence(integer)
#   array = []
#   (1..integer).each { |int| array << int}
#   array
# end

# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]

=begin # 5
uppercase check
write a method that takes a string argument
return `true` if all of the alphabetic characters inside the string are uppercase
else return `false`
P: input: string
   output: boolean
E: inplicit: an empty string should return true
D/A: split the string
     check to see if all the letters are uppercase
     if yes, return `true`
     if no, return `false`
=end

# def uppercase?(string)
#   string == string.upcase
# end

# p uppercase?('t') == false
# p uppercase?('T') == true
# p uppercase?('Four Score') == false
# p uppercase?('FOUR SCORE') == true
# p uppercase?('4SCORE!') == true
# p uppercase?('') == true

=begin # 6
how long are you?
write a method that takes a string argument
return an array that contains every word from the string,
to which you have appended a space and the word length
P: input: string
   output: array of strings
D/A: initialize an array
     split the string
     iterate through the array of strings and find size of string
     append string interpolation to new array with string that consist of word and word length
=end

# def word_lengths(string)
#   array = []
#   string.split.each do |word|
#     array << word + " #{word.size}"
#   end
#   array
# end

# p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]
# p word_lengths("baseball hot dogs and apple pie") == ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]
# p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]
# p word_lengths("Supercalifragilisticexpialidocious") == ["Supercalifragilisticexpialidocious 34"]
# p word_lengths("") == []

=begin # 7
name 
write a method that takes a string
return a string that contains the last name, a comma, a space, and the first name
=end

# def swap_name(string)
#   words = string.split
#   "#{words[1]}, #{words[0]}"
# end

# p swap_name('Joe Roberts') == 'Roberts, Joe'

=begin # 8
sequence count
write a method that takes two integer arguments
return an array that contains the same number of elements as the first integer argument
while the values of each element will be multiples of the starting number
P: input: two integers
   output: an array of integers that are multiples of the second argument with a size of the first argument
D/A: initialize an array
     starting with the second integer argument, append to array itself and the multiples until array size == first integer argument
=end

# def sequence(first, second)
#   array = []
#   (1..first).each do |int| 
#     array << int * second
#   end
#   array
# end

# p sequence(5, 1) == [1, 2, 3, 4, 5]
# p sequence(4, -7) == [-7, -14, -21, -28]
# p sequence(3, 0) == [0, 0, 0]
# p sequence(0, 1000000) == []

=begin # 9
grade book
write a method that determines the mean (average) of the three scores passed to it
return the letter value associated with that grade
P: input: three integers
   output: grade value
D/A: add the three integers and divide the sum by 3 == average
     iterate through the score letter chart and see the range the average falls into
     return the letter grade
=end

# def get_grade(one, two, three)
#   average = (one + two + three) / 3
#   case
#   when 90 <= average && average <= 100
#     'A'
#   when 80 <= average && average < 90
#     'B'
#   when 70 <= average && average < 80
#     'C'
#   when 60 <= average && average < 70
#     'D'
#   when 0 <= average && average < 60
#     'F'
#   end
# end

# p get_grade(95, 90, 93) == "A"
# p get_grade(50, 50, 95) == "D"

=begin # 10
grocery list
write a method that takes a nested array
returns one array with each fruit listed the correct number of times
P: intput: a nested array with each inner array containging a string and integer
   output: an array with the fruit listed the number represented by the integer 
=end

# def buy_fruit(nested_array)
#   nested_array.each_with_object([]) do |(str, int), array|
#     int.times do 
#       array << str
#     end
#   end
# end

# p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) == ["apples", "apples", "apples", "orange", "bananas","bananas"]

=begin # 11
group anagrams
write a method that takes an array of strings
return an array of the strings which are anagrams
anagrams are words that have the same exact letters in them but in different order
=end

def anagrams(array)
  final = {}
  array.each do |word|
    key = word.split('').sort.join
    if final.has_key?(key)
      final[key].push(word)
    else
      final[key] = [word]
    end
  end
  final.each_value do |v|
    p v
  end
end

words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live', 'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide', 'flow', 'neon']
p anagrams(words)

