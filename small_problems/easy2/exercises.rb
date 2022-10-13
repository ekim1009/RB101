=begin #1
how old is teddy?
build a program that randomly generates and prints teddy's age (between 20 and 200)
=end

# def teddy_age
#   puts "Teddy is #{rand(20..200)} years old!"
# end
 
# teddy_age

=begin #2
how big is the room?
asks a user for the length and width of a room in meters
displays the area of the room in both square meters and square feet
1 square meter = 10.7639 square feet
=end

# def area_of_room
#   puts "Enter the length of the room in meters:"
#   length = gets.chomp.to_i
#   puts "Enter the width of the room in meters:"
#   width = gets.chomp.to_i
  
#   square_meters = length * width
#   square_feet = square_meters * 10.7639
  
#   puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)."
# end

# area_of_room


=begin #3
tip calculator
prompt for bill amount
prompt for tip rate
comput the tip and the display both the tip and total amount of the bill
=end

# def tip_calculator
#   puts "What is the bill?"
#   total = gets.chomp.to_f
#   puts "What is the tip percentage?"
#   tip_percentage = gets.chomp.to_f
  
#   tip = total * (tip_percentage / 100)
  
#   puts "The tip is #{tip.round(2)}"
#   puts "The total is #{(total + tip).round(2)}"
# end

# tip_calculator

=begin #4
when will i retire?
prompt user for age
prompt what age they would like to retire
print current year and year they will retire
print how many more years they have left of work
=end

# def retire
#   puts "What is your age?"
#   age = gets.chomp.to_i
#   puts "At what age would you like to retire?"
#   retire_age = gets.chomp.to_i
  
#   current_date = Time.now
#   current_year = current_date.year
  
#   retire_year = current_year + (retire_age - age)
#   years_left_to_work = retire_year - current_year
  
#   puts "It's #{current_year}.  You will retire in #{retire_year}."
#   puts "You have only #{years_left_to_work} years of work to go!"
# end

# retire

=begin #5
greeting a user
prompts for a user's name
greet the user
if the user ends with an '!', yell back in all caps
=end

# def greet_user
#   puts "What is your name?"
#   name = gets.chomp
  
#   if name.chars.pop == '!'
#     puts "HELLO #{name.upcase}.  WHY ARE WE SCREAMING?"
#   else
#     puts "Hello #{name}."
#   end
  
# end 

# greet_user


=begin #6 
odd numbers
print all odd numbers from 1 to 99, inclusive, with each number on a separate line
=end

# (1..99).each do |num|
#   if num.odd?
#     puts num
#   end
# end

=begin #7
even numbers
print all even numbers from 1 to 99, inclusive, with each number on a separate line
=end

# (1..99).each do |num|
#   if num.even?
#     puts num
#   end
# end

=begin #8
sum or product of consecutive integers
prompt user to enter an integer greater than o
prompt user if they want sum or product of all the numbers between 1 and entered number
=end

# def sum_or_product
#   puts "Please enter an integer greater than 0:"
#   number = gets.chomp.to_i
#   puts "Enter 's' to comput the sum, 'p' to compute the product"
#   operation = gets.chomp.downcase
  
#   sum = 0
#   if operation == 's'
#     (1..number).map do |num|
#       sum += num
#     end
#     puts "The sum of the integers between 1 and #{number} is #{sum}."
#   end
  
#   product = 1
#   if operation == 'p'
#     (1..number).map do |num|
#       product *= num
#     end 
#     puts "The product of the integers between 1 and #{number} is #{product}."
#   end
# end 

# sum_or_product

# *This is bad coding.  one action per method!


=begin #9
string assignment
name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name
This outputs
Alice, Bob
- the variable name is pointing to an object represented by the string "Bob"
- save_name is pointing to the object name which is pointing to an object represented by the string "Bob"
- name gets reassigned to the object represented by the string "Alice"
- save_name is still pointint to the original object "Bob"

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name
This outputs
"BOB", "BOB"
- the upcase! is a destructive method which mutates the object represented by the string "bob"
- since we are mutating the original object and save_name is pointing at the original object, it is also mutated
=end

=begin #10
mutation
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
- the first each method is performing a destructive action "<<" which copies all the elements in array1 into array2 which results in them both pointing at the same object, the array of strings
- the second each method is also performing a destructive action "upcase!", but only if the values start with "c" or "s"
- the ouput of array2 will be
Moe
Larry
CURLY
SHEMP
Harpo
CHICO
Groucho
Zeppo
=end