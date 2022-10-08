=begin
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

=begin
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

=begin
list of digits
write a method that takes one positive integer
returns a list of the digits in the number
=end

def digit_list(number)
  number.digits.reverse
end

puts digit_list(12345)
puts digit_list(7)
puts digit_list(375290)
puts digit_list(444)       