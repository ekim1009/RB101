=begin #1
searching 101
prompt for a number 6 separate times
print a message that describes whether or not the 6th number appears amongst the first 5
=end

# five_num = []

# puts "Enter the 1st number:"
# five_num << first_num = gets.chomp.to_i
# puts "Enter the 1st number:"
# five_num << second_num = gets.chomp.to_i
# puts "Enter the 1st number:"
# five_num << third_num = gets.chomp.to_i
# puts "Enter the 1st number:"
# five_num << fourth_num = gets.chomp.to_i
# puts "Enter the 1st number:"
# five_num << fifth_num = gets.chomp.to_i
# puts "Enter the 1st number:"
# sixth_num = gets.chomp.to_i

# if five_num.include?(sixth_num)
#   puts "The number #{sixth_num} appears in #{five_num}."
# else
#   puts "The number #{sixth_num} does not appear in #{five_num}."
# end

=begin #2
arithmetic integer
prompt user for a positive integer two times
print the result of the following operations : addition, subtraction, product, quotient, remainder, and power
=end

# puts "Enter the first number:"
# first_num = gets.chomp.to_i
# puts "Enter the second number:"
# second_num = gets.chomp.to_i

# puts "#{first_num} + #{second_num} = #{first_num + second_num}"
# puts "#{first_num} - #{second_num} = #{first_num - second_num}"
# puts "#{first_num} * #{second_num} = #{first_num * second_num}"
# puts "#{first_num} / #{second_num} = #{first_num / second_num}"
# puts "#{first_num} % #{second_num} = #{first_num % second_num}"
# puts "#{first_num} ** #{second_num} = #{first_num ** second_num}"

=begin #3
counting the number of characters
prompt user for an unput of a word or multiple words
give back the number of characters.  spaces not included as characters
=end

# puts "Please write a word or multiple words:"
# words = gets.chomp

# word = words.strip.delete(" ").size

# puts "There are #{word} characters in '#{words}.'"

=begin #4 
multiplying two numbers
create method that takes two arguments, multiples them together
returns the result
=end

# def multiply(num1, num2)
#   num1 * num2
# end 

# multiply(5, 3) == true

=begin #5
squaring an argument
write a method that computes the square of its argument using the multiply method
=end

# def square(num)
#   multiply(num, num)
# end 

# puts square(5) == 25
# puts square(-8) == 64

=begin #6
exclusive or
write function name xor that takes two arguments
returns true if only one of its arguments is truthy
false otherwise
looking for boolean result
=end

# def xor?(arg1, arg2)
#   if (arg1 == true && arg2 == true) || (arg1 == false && arg2 == false)
#     false
#   else
#     true
#   end
# end
    
# xor?(5.even?, 4.odd?) == false
# xor?(5.even?, 4.odd?) == false
# xor?(5.even?, 4.odd?) == false
# xor?(5.even?, 4.odd?) == false


=begin #7
odd lists
write method that returns an array that containes every other element of an array passed as the argument
=end

# def oddities(array)
#   new_array = []
  
#   array.each_index do |ele, idx|
#     new_array << ele
#   end
#   new_array
# end

# puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []

=begin #8
palindromic strings(part 1)
-P
method that tells if a string is a palindrome
input: string
putout: boolean
case matters 
spaces also count
would a one lettered string be considered a palindrome?
-E
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true
-D/A
see if the string size is 1, if so, return true
see if the first index and last index match, if they do
see if the second and second to last index match, if they do
see if the third index and third to last index match, if they do, etc
if there are no more index's, break 
-C
code with intent
=end

def palindrome(string)
    
  if string.length == 1
    true
  end
  
  string.each do |char|
    if char[0] =
  end
end
=begin #9
palindromic strings (part 2)
=end

=begin #10
palindromic numbers
=end