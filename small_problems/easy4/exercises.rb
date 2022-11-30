=begin #1
short long short
write a method that takes two arguments, strings
determine the longer of the two strings
return concatenation of short long short
=end

# def short_long_short(string, string2)
#   if string.length > string2.length
#     string2.concat(string, string2)
#   else
#     string.concat(string2, string)
#   end
# end

# puts short_long_short('abc', 'defgh') == "abcdefghabc"
# puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
# puts short_long_short('', 'xyz') == "xyz"

=begin #2
what century is that?
write a method that takes an argument, year, and returns the century of that year
return value should be a string that begins with century number and ends with st, nd, rd, or th
new century begins in '01' 
=end

# def century(year)
#   century = 0
#   first, last = year.divmod(100)
#   if last >= 1
#     century += 1
#   end
#   total = century + first
#   ordinals(total)
# end

# def ordinals(total)
#   return total.to_s + 'th' if [11, 12, 13].include?(total % 100)
#   ending = total % 10
#   case 
#   when ending == 1 then total.to_s + 'st'
#   when ending == 2 then total.to_s + 'nd'
#   when ending == 3 then total.to_s + 'rd'
#   else total.to_s + 'th'
#   end
# end

# p century(2000) == '20th'
# p century(2001) == '21st'
# p century(1965) == '20th'
# p century(256) == '3rd'
# p century(5) == '1st'
# p century(10103) == '102nd'
# p century(1052) == '11th'
# p century(1127) == '12th'
# p century(11201) == '113th'

=begin #3
leap years (part1)
leap years occur in every year that is evely divisible by 4, unless the year is also divisible by 100
if the year is divisible by 100, it is not a leap year, but if it is divisible by 400, it is a leap year
return true if it is a leap year and false if it is not
=end

# def leap_year?(year)
#   if year % 400 == 0
#     true
#   elsif year % 100 == 0
#     false
#   elsif year % 4 == 0
#     true
#   else
#     false
#   end
# end

# puts leap_year?(2016) == true
# puts leap_year?(2015) == false
# puts leap_year?(2100) == false
# puts leap_year?(2400) == true
# puts leap_year?(240000) == true
# puts leap_year?(240001) == false
# puts leap_year?(2000) == true
# puts leap_year?(1900) == false
# puts leap_year?(1752) == true
# puts leap_year?(1700) == false
# puts leap_year?(1) == false
# puts leap_year?(100) == false
# puts leap_year?(400) == true

=begin #4
leap years (part 2)
update previous method to see if leap year before 1752 (any yea divisible by 4 was a leap year)
=end

# def leap_year?(year)
#   if year < 1752 && year % 4 == 0
#       true
#   elsif year % 400 == 0
#     true
#   elsif year % 100 == 0
#     false
#   elsif year % 4 == 0
#     true
#   else
#     false
#   end
# end

# puts leap_year?(2016) == true
# puts leap_year?(2015) == false
# puts leap_year?(2100) == false
# puts leap_year?(2400) == true
# puts leap_year?(240000) == true
# puts leap_year?(240001) == false
# puts leap_year?(2000) == true
# puts leap_year?(1900) == false
# puts leap_year?(1752) == true
# puts leap_year?(1700) == true
# puts leap_year?(1) == false
# puts leap_year?(100) == true
# puts leap_year?(400) == true

=begin #5 
multiples of 3 and 5
write a method that takes an argument, a number
search for all the multiples of 3 and 5 in the number
find the sum of the multiples
=end

# def multisum(num)
#     total = 0
#   (1..num).each do |num|
#     if num % 3 == 0 || num % 5 == 0
#       total += num
#     end  
#   end
#   total
# end

# puts multisum(3) == 3
# puts multisum(5) == 8
# puts multisum(10) == 33
# puts multisum(1000) == 234168

=begin #6
running totals
write a method that takes an argument, an array of numbers
returns an array with the same number of elements where each element is the sum of itself and the numbers prio
=end

# def running_total(array)
#   total = 0
#   array.map {|num| total += num}
# end

# def running_total(array)
#   total = 0
#   array.each_with_object([]) {|num, arr| arr << total += num }  
# end

# p running_total([2, 5, 13])# == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20])# == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []

=begin #7
convert a string to a number!
write a method that takes an argument, string of digits
returns the appropriate number as an integer
cannot use the to_i method
=end

# DIGITS = {
#     '0'=> 0, '1'=> 1, '2'=> 2, '3'=> 3, '4'=> 4, 
#     '5'=> 5, '6'=> 6, '7'=> 7, '8'=> 8, '9'=> 9
# }

# def string_to_integer(string)
#   digits = string.chars.map {|char| DIGITS[char]}
  
#   integer = 0
#   digits.each {|digit| integer = 10 * integer + digit}
#   integer
# end 

# p string_to_integer('4321') == 4321
# p string_to_integer('570') == 570

# convert string representing a hexadecimal number into its integer value
# hexadecimal is a numbering system with base 16
# 0123456789ABCDEF


# def hexadecimal_to_integer(string)
#     hexa_to_deci = {
#     '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, 
#     '8' => 8, '9' => 9, 'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15
# } 
#   integer = 0
#   exponent = 0
#   string.upcase.reverse.each_char do |digit| 
#     integer += hexa_to_deci[digit] * 16 ** exponent
#     exponent += 1
#   end
#   integer
# end

# puts hexadecimal_to_integer('4D9f') == 19871

=begin #8
convert a string to a signed number!
write a method that takes a string of digits
returns the appropriate number as an integer
string may have a leading + or - sign
if the first character is a +, return a positive number
if the first character is a -, return a negative number
if no sign is given, return a positive number
cannot use to_i, Integer(), etc but may use string_to_integer method from previous question
=end

# DIGITS = {
#     '0'=> 0, '1'=> 1, '2'=> 2, '3'=> 3, '4'=> 4, 
#     '5'=> 5, '6'=> 6, '7'=> 7, '8'=> 8, '9'=> 9, 
# }

# def string_to_integer(string)
#   digits = string.chars.map {|char| DIGITS[char]}
  
#   integer = 0
#   digits.each {|digit| integer = 10 * integer + digit}
#   integer
# end 

# def string_to_signed_integer(string)
#   if string.start_with?('+')
#     signless = string.delete('+')
#     string_to_integer(signless)
#   elsif string.start_with?('-')
#     signless = string.delete('-')
#     -string_to_integer(signless)
#   else
#     string_to_integer(string)
#   end
# end

# p string_to_signed_integer('4321') == 4321
# p string_to_signed_integer('-570') == -570
# p string_to_signed_integer('+100') == 100

=begin #9
conver a number to a string!
write a method that takes a positive integer or zero
returns a string representation 
may not use to_s, String(), etc
=end

# def integer_to_string(integer)
#   integers = {
#       0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 
#       5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
#   } 
  
#   int = integer.digits.reverse
#   string = ''
  
#   int.each do |num|
#     string << integers[num]
#   end 
#   string
# end

# p integer_to_string(4321) == '4321'
# p integer_to_string(0) == '0'
# p integer_to_string(5000) == '5000'

=begin #10
conver a signed number to a string!
write a method that takes an integer
returns a string representation of that integer
you may not use to_s, String(), etc, but may use the integer_to_string method from above
=end

# def signed_integer_to_string(num)
#   integers = {
#       0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 
#       5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
#   }
  
#   if num > 0
#     integer_to_string(num).prepend('+')
#   elsif num < 0
#     integer_to_string(num.abs).prepend('-')
#   else
#     integer_to_string(num)
#   end
# end

# p signed_integer_to_string(4321) == '+4321'
# p signed_integer_to_string(-123) == '-123'
# p signed_integer_to_string(0) == '0'
