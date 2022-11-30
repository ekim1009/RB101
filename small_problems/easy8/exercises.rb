=begin # 1
sum of sums
write a method that takes an array of integers
return the sum of the sums of each leading sequence for that array
assume that the array contains at lease one number
P: input: array of integers
   output: sum of first integer added with each incrementing index
D/A: initiate through array
     first index + (first + second index) + (first + second + third index) + .. 
=end

# def sum_of_sums(array)
#   total = 0
#   sum = 0
#   array.each do |int|
#     total += int
#     sum += total
#   end
#   sum
# end

# p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# p sum_of_sums([4]) == 4
# p sum_of_sums([1, 2, 3, 4, 5]) == 35

=begin # 2
madlibs
write a method that asks for a noun, verb, adj, and adverb
return a mad lib with the inputs
=end


  # puts "Enter a noun:"
  # noun = gets.chomp
  # puts "Enter a verb:"
  # verb = gets.chomp
  # puts "Enter an adjective:"
  # adj = gets.chomp
  # puts "Enter an adverb:"
  # adverb = gets.chomp
  
  # sentence1 = "Do you #{verb} your #{adj} #{noun} #{adverb}? That's hilarious!"
  # sentence2 = "The #{adj} #{noun} #{verb}s #{adverb} over the lazy dog."
  # sentence3 = "The #{noun} #{adverb} #{verb}s up #{adj} Joe's turtle."
  
  # puts [sentence1, sentence2, sentence3].sample

=begin # 3
leading substrings
write a method that takes a string and
returns a list of substrings that start at the beginning of the original string
return values should be arranged in order from shortest to longest substring
P: input: string
   output: an array of substring starting with the first letter from string argument
E: implicit: return an array of strings
   explicit: only want substrings starting with the first letter, not all possible substrings
D/A: initialize an array
split the string
starting with the first letter, append to new array
append first and second letter to array
etc
=end

# def leading_substrings(string)
#   array = []
#   0.upto(string.size - 1) do |index|
#     array << string[0..index]
#   end
#   array
# end


# p leading_substrings('abc') == ['a', 'ab', 'abc']
# p leading_substrings('a') == ['a']
# p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

=begin # 4
all substrings
write a method that returns a list of all substrings of a string
return list should be ordered by length
P: input: string
   output: all substrings in size order starting with letter index position
E: implicit:
   explicit:
D/A: 
=end

# def substrings(string)
#   array = []
#   (0..string.size).each do |i|
#     (i..string.size - 1).map do |j|
#       array << string[i..j]
#     end
#   end
#   array
# end

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

p substrings('abcde')# == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]

=begin # 5
palindromic substrings
write a method that takes a string and
returns a list of all substrings that are palindromic
you may use substring method
assume that single characters are not palindromes
=end

# def substrings(string)
#   array = []
#   (0..string.size).each do |i|
#     (i..string.size - 1).map do |j|
#       array << string[i..j]
#     end
#   end
#   array
# end

# def palindromes(string)
#   array = []
#   sub_str = substrings(string)
#   sub_str.each do |str|
#     array << str if (str == str.reverse) && (str.size > 1)
#   end
#   array
# end


# p palindromes('abcd') == []
# p palindromes('madam') == ['madam', 'ada']
# p palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# p palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

=begin # 6
fizzbuzz
write a method that takes two arguments: first is the starting number, second is ending number
print out all numbers from the starting number to the ending number 
except if a number is divisible by 3, print 'Fizz'
if a number is divisible by 5, print 'Buzz'
if a number is divisible by 3 and 5, print 'FizzBuzz'
P: input: two integers
   output: numbers and 'Fizz', 'Buzz', 'FizzBuzz' where appropriate
D/A: iterate through starting number to finishing number
     where the number is divisible by 3, output 'Fizz'
     where the number is divusible by 5, output 'Buzz'
     where the number is divisible by 3 and 5, output 'FizzBuzz'
=end

# def fizzbuzz(int1, int2)
#   range = (int1..int2).to_a
#   range.each do |int|
#     case
#     when int % 3 == 0 && int % 5 == 0
#       puts 'FizzBuzz'
#     when int % 3 == 0
#       puts "Fizz"
#     when int % 5 == 0
#       puts "Buzz"
#     else
#       puts int
#     end
#   end
# end

# p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

=begin # 7
double char (part 1)
write a method that takes a string and
returns a new string in which every character is doubled
P: input: string
   output: string with every letter doubled
D/A: split the string
     iterate through the array of single letter strings
     at each iteration, add the letter twice
     join
=end

# def repeater(string)
#   final = ''
#   string.chars {|let| final << let + let}
#   final
# end

# p repeater('Hello') == "HHeelllloo"
# p repeater("Good job!") == "GGoooodd  jjoobb!!"
# p repeater('') == ''

=begin # 8
double char (part 2)
write a method that takes a string and
returns a new string in which every consonant character is doubled
vowels, punctuations, and whitespace should not be doubled
=end

# CONSONANTS = ('BCDFGHJKLMNPQRSTVWXXYZbcdfghjklmnpqrstvwxyz')

# def double_consonants(string)
#   final = ''
#   string.chars.each do |let|
#     if CONSONANTS.include?(let)
#       final << let + let
#     else
#       final << let
#     end
#   end
#   final
# end

# p double_consonants('String') == "SSttrrinngg"
# p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# p double_consonants("July 4th") == "JJullyy 4tthh"
# p double_consonants('') == ""

=begin # 9
reverse the digits in a number
write a method that takes a positive integer and
returns that number with its digits reversed
P: input: integer
   output: integer reversed without leading 0's
D/A: change integer into a string
     reverse the string
     change back into integer
=end

# def reversed_number(integer)
#   integer.to_s.reverse!.to_i
# end

# p reversed_number(12345) == 54321
# p reversed_number(12213) == 31221
# p reversed_number(456) == 654
# p reversed_number(12000) == 21 # No leading zeros in return value!
# p reversed_number(12003) == 30021
# p reversed_number(1) == 1

=begin # 10
get the middle character
write a method that takes a non=empty string and
returns the middle character(s) of the argument
if the argument has an odd length, return exactly one character
if the argument has an even length, return exactly two characters
P: input: string
   output: the character(s) in the center of the string
D/A: split the string
     find the center index of string
     if center index is odd, return letter at that index
     if center index is even, return letter at that index and the one before it
=end

# def center_of(string)
#   final = ''
#   center = string.size / 2
#   if string.size % 2 == 1
#     final << string[center]
#   else 
#     final << string[center - 1] + string[center]
#   end
#   final
# end


# p center_of('I love ruby') == 'e'
# p center_of('Launch School') == ' '
# p center_of('Launch') == 'un'
# p center_of('Launchschool') == 'hs'
# p center_of('x') == 'x'

# a = {one: 1, two: 2, three: 3}

# hash = Hash.new(0)

# b = a.each_value do |val|
#   val += 1
# end
# p b

