=begin # 1
combine two lists
write a method that combines two arrays passed in as arguments and 
returns a new array that contains all elements from both array arguments
with the elements taken in alteration
P: input: two arrays
   output: array with two arrays combined alternately
E: implicit: both arrays have same number of elements
   explicit: 
D/A: initialize an empty array
     take the first element from array 1 and add to new array
     take the first element from array 2 and add to new array
     take the second element from array 1 and add to new array
     take the second element from array 2 and add to new array
     continue until there are not elements left in both arrays
=end

# def interleave(array1, array2)
#   new_arr = []
#   even = 0
#   odd = 1
#   array1.each do |ele|
#     new_arr.insert(even, ele)
#     even += 2
#   end
#   new_arr.compact!
#   array2.each do |ele|
#     new_arr.insert(odd, ele)
#     odd += 2
#   end
  
#   new_arr
# end

# def interleave(array1, array2)
#   array1.zip(array2).flatten!
# end

# p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

=begin # 2
lettercase counter
write a method that takes a string and returns a has that contains 3 entries:
one represents the number of characters in the string that are lowercase letters
one the number of characters that are uppercase letters
one the number of characters that are neither
P: input: string
   output: hash with three key value pairs
E: implicit: empty spaces and non letters go into neither catgory
   explicit:
D/A: initialize a hash
     iterate through the string
     if there are any lowercase letters, add value by number of lowercase letters
     if there are any uppercase letters, add value by number of uppercase letters
     anything that is not a letter increments the neither value
=end

# def letter_case_count(string)
#   lowercase = ('a'..'z').to_a
#   uppercase = ('A'..'Z').to_a
#   hash = {:lowercase => 0, :uppercase => 0, :neither => 0}
#   string.chars.each do |ele|
#     if lowercase.include?(ele)
#       hash[:lowercase] += 1
#     elsif uppercase.include?(ele)
#       hash[:uppercase] += 1
#     else
#       hash[:neither] += 1
#     end
#   end
#   hash
# end

# p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

=begin # 3
capitalize words
write a method that takes a single string argument and 
returns a new string that contains the original vale of the argument 
with the first character of every word capitalized and all other letters lowercase
P: input: string
   output: string with only the first character uppercased
E: implicit: 
   explicit:
D/A: split the string
     iterate through the split string
     capitalize each word
     join
=end

# def word_cap(string)
#   words = string.split
#   words.map { |word| word.capitalize!}
#   words.join(' ')
# end

# p word_cap('four score and seven') == 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

=begin # 4
swap case
write a method that takes a string and 
returns a new string in which every uppercase letter is replaced by its lowercase version
and every lowercase letter by its uppercase version
all other characters should be unchanged
P: input: string
   output: string with cases reversed
E: implicit:
   explicit:
D/A: split the string
     iterate through the string and set lowercase to uppercase and uppercase to lowercase
     join
=end

# def swapcase(string)
#   lowercase = ('a'..'z').to_a
#   uppercase = ('A'..'Z').to_a
#   letters = string.chars.map do |let|
#     if lowercase.include?(let)
#       let.upcase
#     else uppercase.include?(let)
#       let.downcase
#     end
#   end
# letters.join
# end

# p swapcase('CamelCase') == 'cAMELcASE'
# p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

=begin # 5
staggered caps(part 1)
write a method that takes a string and
returns a new string that contains the original value using a staggered capitalization scheme
in which every other character is capitalized and the remaining are lowercase
non letters should stay the same but count as characters when switching between cases
P: input: string
   output: string with alternating cases
E: implicit:
   explicit:
D/A: split the string
     iterate through the string 
     odd index should be uppercase
     even index should be lowercase
=end

# def staggered_case(string)
#   let = string.chars.each_with_index do |letter, index|
#     if index.odd?
#       letter.downcase!
#     else
#       letter.upcase!
#     end
#   end
#   let.join
# end

# p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

=begin # 6
staggered caps (part 2)
modify the method from part 1 so it ignores non-alphabetic characters when determining cases
=end

# def staggered_case(string)
# result = ''
# need_upper = true
# string.chars.each do |ele|
#   if ele =~ /[a-z]/i
#     if need_upper
#       result += ele.upcase
#     else 
#       result += ele.downcase
#     end
#     need_upper = !need_upper
#   else
#     result += ele
#   end
# end
# result
# end

# p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# p staggered_case('ALL CAPS') == 'AlL cApS'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

=begin # 7
multiplicative average
write a method that takes an array of integers
multiply the numbers together then divide the resulr by the number of elements in array
then print the result rounded to 3 decimal places
P: input: array of integers
   output: print result of all integers in array multiplied then divided by number of elements in array
E: implicit:
   explicit:
D/A: multiply all the integers together
     divide the product by the size of the array
     output "The result is #" with # rounded to 3 decimal places
=end

# def show_multiplicative_average(array)
#   product = 1
#   array.each do |int|
#     product *= int.to_f
#   end
#   total = product / array.size
#   puts "The result is #{format('%0.3f', total)}"
# end

# p show_multiplicative_average([3, 5])                # => The result is 7.500
# p show_multiplicative_average([6])                   # => The result is 6.000
# p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

=begin # 8
multiply lists
write a method that takes two arrays of integers
return a new array that contains the product of each pair of numbers from the arguments that have the same index
you may assume both arrays have same number of elements
P: input: two arrays of integers
   output: array of the integers at the same index in each array multiplied
E: implicit:
   explicit:
D/A: 
=end

# def multiply_list(array1, array2)
#   array = []
#   count = 0
#   loop do
#     array[count] = array1[count] * array2[count]
#     count += 1
#     break if count == array1.size
#   end
#   array
# end

# p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

=begin # 9
multiply all pairs
write a method that takes two array arguments
return a new array that contains the product of every pair of numbers that can be formed between the two arrays
the results should be sorted by increasing value
P: input: two arrays with integers
   output: 
D/A: get the product of the two arrays
     multiply the inner arrays
     flatten and sort
=end

# def multiply_all_pairs(array1, array2)
#   nested = array1.product(array2)
#   array = []
#   nested.each do |ele|
#     array << ele[0] * ele[1]
#   end
#   array.sort!
# end

# p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

=begin # 10
the end is near but not here
write a method that returns the next to last word in the string passed to it as an argument
words are any sequence of non_blank characters
you may assume input string will always contain at least two words
P: input: string
   output: second to last word in the string
D/A: split the string
     iterate through the array of strings
     return the second to last word
=end

# def penultimate(string)
#   string.split[-2]
# end

# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'
