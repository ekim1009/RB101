#puts "the value of 40 + 2 is " + (40 + 2)

# this will result in an error because you cannot use the
# + on a string and integer

# one possible way to fix this is to set the addition to a variable
total = 40 + 2
# or total = (40 + 2).to_s
puts "the value of 40 + 2 is " + total.to_s

# you can use template literal
puts "the value of 40 + 2 is #{total}"
puts "the value of 40 + 2 is #{(40 + 2).to_s}"