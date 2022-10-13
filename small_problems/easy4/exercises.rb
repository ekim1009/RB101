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
=end

# def century(year)
  
# end

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

def string_to_integer(string)
  
end 

string_to_integer('4321') == 4321
string_to_integer('570') == 570

=begin #8
convert a string to a signed number!
=end

=begin #9
conver a number to a string!
=end

=begin #10
conver a signed number to a string!
=end