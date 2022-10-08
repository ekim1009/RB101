numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# I expect line 4 to print 1\n 2\n 2\n 3
# puts tries to convert everything to a string by calling to_s
# uniq is not a mutating method so the original array stays the same.  
# If it was uniq!, it would print [1, 2, 3]