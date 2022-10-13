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
if negative number and less than 24, subract from 2400
if positive number add to 0000, if greater than 60, 1:00, if it reaches 24:00 start again from 0
=end

# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

=begin #3
after midnight (part 2)
=end

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

# puts swap("hello there sir")
# puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# puts swap_first_last_character('Abcde') == 'ebcdA'
# puts swap('a') == 'a'

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
=end

=begin #7
letter counter (part 2)
=end

=begin #8
alphabetical numbers
=end

=begin #9
ddaaiillyy ddoouubbllee
=end

=begin #10
bannerizer
=end

=begin #11
spin me around in circles
=end