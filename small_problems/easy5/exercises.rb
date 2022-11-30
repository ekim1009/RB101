=begin #1
ASCII string value
write a method that takes an argument, a string
returns the ASCII string value (sum of the ASCII values of every character in the string)
may use string#ord to determine the ASCII value of a character
-P
input: string
output: numerical sum of ascii numbers
-D
initialize a total variable
iterate through the string and find the ascii number of that character
add it to the total
return the total
=end

# def ascii_value(string)
#   total = 0
#   string.each_char {|char| total += char.ord}
#   total
# end

# p ascii_value('Four score') == 984
# p ascii_value('Launch School') == 1251
# p ascii_value('a') == 97
# p ascii_value('') == 0

=begin #2
after midnight (part 1)
write a method that takes an argument, time using minute-based format
returns the time of day in 24 hour format (hh:mm)
do not use Date or Time classes
positive numbers is after midnight
negative numbers is before midnight
-P
input: time in minute format
output: time in hh:mm format
-D
there are 1440 minutes in 24 hours
there are 60 minutes in one hour

=end

# def time_of_day(integer)
#   hour, minute = integer.divmod(60)
#   hour = hour % 24
#   "#{'%0.2d' % hour}:#{'%0.2d' % minute}"  
# end

# p time_of_day(0) == "00:00"
# p time_of_day(-3) == "23:57"
# p time_of_day(35) == "00:35"
# p time_of_day(-1437) == "00:03"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
# p time_of_day(-4231) == "01:29"
# p time_of_day(754)

=begin #3
after midnight (part 2)
write two methods, after_midnight and before_midnight, that takes one string representation of a time
return the number of minutes before and after midnight.  return value should be a range of 0..1439
P: input: string representation of a specific time
   output: integer 
D/A: 
=end

# def before_midnight(string)
#   total = 0
#   integer = string.chars.map {|i| i.to_i}.join.to_i
#   first, last = integer.divmod(100)
#   hour = first / 10
#   if hour % 24 != 0
#     total += hour * 60
#     total -= last
#   else 
#     total
#   end
#   total
# end

# def after_midnight(string)
#   total = 0
#   integer = string.chars.map {|i| i.to_i}.join.to_i
#   first, last = integer.divmod(100)
#   hour = first / 10
#   if hour % 24 != 0
#     total += hour * 60
#     total += last
#   else 
#     total
#   end
#   total
# end

# p after_midnight('00:00') == 0
# p before_midnight('00:00') == 0
# p after_midnight('12:34') == 754
# p before_midnight('12:34') == 686
# p after_midnight('24:00') == 0
# p before_midnight('24:00') == 0

=begin #4 
letter swap
write a method that takes an argument, a string of words
return a string in which the first and last letters of every word ar swapped
-P
input: string of words
output: string with first and last letter of each word switched
if string is a single letter, return letter
if string is single word, swap first and last letter
-D 
see if there are any spaces in the string
if not, see if the word size == 1 => return letter
if string is one word, swap first and last letter
if there are spaces in the string, separate each word
iterate through each word and swap first and last letters
join the back with a space
=end

# def swap_first_last_character(string)
#   string[0], string[-1] = string[-1], string[0]  
#   string
# end

# def swap(string)
#   words = string.split.map do |word|
#       swap_first_last_character(word)
#   end 
#   words.join(' ')
# end

# p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') == 'ebcdA'
# p swap('a') == 'a'

=begin #5
clean up the words
write a method that takes an argument, a string
return that string with all of the non-aplhabetic characters replaced by spaces
if one or more non alphabetic characters occur in a row, replace with one space, not multiple spaces
=end

# ALPHABET = ('a'..'z').to_a

# def cleanup(string)
#   new_char = []
  
#   string.chars.each do |word|
#     if ALPHABET.include?(word) 
#       new_char << word
#     else
#       new_char << ' ' unless new_char.last == ' '
#     end
#   end
#   new_char.join
# end

# puts cleanup("---what's my +*& line?") == ' what s my line '

=begin #6
letter counter (part 1)
write a method that takes a string with one or more spaces
return a hash that shows the number of words of different sizes
P:
  input: a string with multiple words
  output: a hash with keys representing the number of letters in a word
          the values representing how many words in the string have that many letters
D/A: 
  create an emppty hash
  split the string
  iterate through each words and see how many letters there are in that word
  if the number of letters in that word is already a key in the hash, add 1 to the value
  if the number of letters in that word is not already a key in the hash, add it as a key with a value of 1
=end

# def word_sizes(string)
#   hash = {}
#   if string.empty?
#     hash
#   end
#   words = string.split
#   words.each do |word|
#     if hash.has_key?(word.size)
#       hash[word.size] += 1
#     else
#       hash[word.length] = 1
#     end
#   end    
#   hash
# end

# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('') == {}

=begin #7
letter counter (part 2)
modify previous method word_sizes to exclude non_letters
ex : the length of "it's" is 3 and not 4
=end

# def word_sizes(string)
#   hash = {}
#   string.split.each do |word|
#     new_word = word.delete('^A-Za-z')
#     if hash.has_key?(new_word.size)
#       hash[new_word.size] += 1
#     else
#       hash[new_word.size] = 1
#     end
#   end    
#   hash
# end

# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# p word_sizes('') == {}

=begin #8
alphabetical numbers
write a method that takes an array of integers between 0 and 19
return an array of the integers sorted based on the English word for each number
P:
  input: array of integers between 0 and 19
  output: integers ordered by english word of each number
E: 1 == one 2 == two 3 == three, etc
D/A: make a constant 'english' with a has of integers as keys and english word as values
create a new array
iterate through the array and find the corresponding value to the hash and add to new array
return the new array
sort the array alphabetically
=end

# ENGLISH = {
#     0=> 'zero', 1=> 'one', 2=> 'two', 3=> 'three', 4=> 'four', 5=> 'five', 6=> 'six', 7=>'seven', 8=> 'eight',
#     9=> 'nine', 10=> 'ten', 11=> 'eleven', 12=> 'twelve', 13=> 'thirteen', 14=> 'fourteen', 
#     15=> 'fifteen', 16=> 'sixteen', 17=> 'seventeen', 18=> 'eighteen', 19=> 'nineteen'
# }

# def alphabetic_number_sort(array)
#   eng_arr = []
#   sorted_arr = []
#   array.each do |num|
#     if ENGLISH.include?(num)
#       eng_arr << ENGLISH[num]
#     end
#   end
#   sorted_eng = eng_arr.sort
#   sorted_eng.each do |word|
#     if ENGLISH.value?(word)
#     sorted_arr << ENGLISH.key(word)
#     end
#   end
#   sorted_arr
# end

# ENGLISH = %w( zero one two three four five six seven eight
#               nine ten eleven twelve thirteen fourteen fifteen 
#               sixteen seventeen eighteen ninteen)
              
# def alphabetic_number_sort(array)
#   array.sort_by do |num|
#     ENGLISH[num]
#   end
# end

# p alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

=begin #9
ddaaiillyy ddoouubbllee
write a method that takes a string
return a new string with all repeated letters singular
do not use string.squeeze or string.squeeze!
=end

# def crunch(string)
#   new_string = ''
#   count = 0
#   while count <= string.length - 1
#     new_string << string[count] unless string[count] == string[count + 1]
#     count += 1
#   end
#   new_string
# end

# p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# p crunch('4444abcabccba') == '4abcabcba'
# p crunch('ggggggggggggggg') == 'g'
# p crunch('a') == 'a'
# p crunch('') == ''

=begin #10
bannerizer
write a method that takes a short line of text
return the text within a box
P: 
  inout: a string of words
  output: the string of words within a visual box
D/A: create a template of puts with either horizontal or vertical lines
create a hash? where you can insert text into the box
if the input is an empty string, still need to output an outline of a box
=end

# def print_in_box(sentence)
#   size = sentence.size + 2
#   top_border = '+' + ('-' * size) + '+'
#   non_text = '|' + (' ' * size) + '|'
#   text = '| ' + sentence + ' |'
#   bottom_border = '+' + ('-' * size) + '+'
  
#   puts top_border
#   puts non_text
#   puts text
#   puts non_text
#   puts bottom_border
# end

# p print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# p print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

=begin #11
spin me around in circles
write a method that takes a string
returns a string that contains the same words, but with each word's characters reversed
given the method's implementation, will the returned string be the same object as the one passed in as an argument or a different object?
=end

=begin
the returned string will not be the same as the object that was passed in as the argument
the last line of the code is calling the spin me method with "hello word" passed in as the argument
the split method is then called on the string which will return an array with each word as a separate object
the each method is then called on the split string (and array of strings) 
the method reverse! is called on each word which is a mutating method
once the words have been reversed, the join method is called on the reversed string which does what it says
joins the two words together with a space in between
so the return value may seem like it is pointint to the same object as the calling object but it is not because the split method was called on the calling object which returns a different object (an array of strings)
=end

# def spin_me(str)
#   str.split.each do |word|
#     word.reverse!
#   end.join(" ")
# end

# spin_me("hello world") # "olleh dlrow"
