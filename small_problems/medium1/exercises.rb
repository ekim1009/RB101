=begin # 1 
rotation (part 1)
write a method that takes an array
returns a new array with the same elements but with the first index element at the last index
may not use array#rotate or array#rotate!
P: input: array
   output: a new array with same elements but with element at index 0 now at index -1
D/A: 
- iterate through the input array
- move the element at index 0 to the index -1
=end

# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end

# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]                 # => true

=begin # 2
rotation (part 2)
write a method that takes two integer arguments
returns the first integer argument with the - indexed element of the second integer argument brought to the end of the array
P: input: two integers
   output: first integer with the index position of the second integer moved to the end of the integer
D/A: split the first integer into an array of single digit integers
     initialize a variable, final_number = []
     intialize a variable, digit_to_move and set it to the integer at the index position of the -second number
     iterate through the array 
        add the number to the final_number array 
        if the number is equal to the digit_to_move, skip
     add the digit_to_move to the final_number array
     join the array into a string
     convert the string into an integer
=end

# def rotate_rightmost_digits(first, second)
#   digits = first.digits.reverse
#   digit_to_move = digits[-second]
#   final_number = []
#   digits.each do |number|
#     if number == digit_to_move
#       next
#     else
#       final_number << number 
#     end
#   end
#   final_number << digit_to_move
#   final_number.join('').to_i
# end

# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917

=begin # 3
rotation (part 3)
problem:  write a method that takes an integer as an argument and returns the maximum rotation of that argument
  input: integer
  output: integer
  
examples: max_rotation(735291) == 321579
          max_rotation(3) == 3
          max_rotation(35) == 53
          max_rotation(105) == 15 # the leading zero gets dropped
          max_rotation(8_703_529_146) == 7_321_609_845
  rules: 
    explicit: start with integer ==> 735291
              rotate the integer to the left ==> 352917
              keep first digit fixed and rotate ==> 329175
              keet first two digits fixed and rotate ==> 321759
              keep first three digits fixed and rotate ==> 321597
              keet first four digits and rotate ==> 321579
    implicit: Number of rotations == integer's length - 1
              you can drop a leading zero
              a single integer will return itself
Algo:
- split the digit into an array of single digit integers
- initialize a variable, index = 0
- loop
  - rotate integer at incrementing index position (starting from 0) to the back of the array
  - move integer at index 0 to back of the array
  - increment index += 1
  - move integer at index 1 to back of the array
  - increment index += 1
  - keep repeating this until the index == array.length - 1
- join the array and turn back into an integer
=end

# def max_rotation(integer)
#   array = integer.digits.reverse
#   index = 0
#   return integer if array.length == 1
#   loop do
#     number = array.slice!(index, 1)
#     array.push(number).flatten
#     index += 1
#   break if index == array.length - 1
#   end
#   array.join('').to_i
# end

# p max_rotation(735291) == 321579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
# p max_rotation(105) == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845

=begin # 4
1000 lights
write a method that takes one argument, the total number of switches,
and returns an array that identifies which lights are on after n repititions
P: 
  input: integer
  output: array of integers
E:
  Example with n = 5 lights:
  round 1: every light is turned on
  round 2: lights 2 and 4 are now off; 1, 3, 5 are on
  round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
  round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
  round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
  The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].
  
  With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].
  
  n = 5
  1: on: [1, 2, 3, 4, 5] off: []
  2: on: [1, 3, 5] off: [2, 4]
  3: on: [1, 5] off: [2, 3, 4]
  4: on: [1, 4, 5] off: [2, 3]
  5: on: [1, 4] off: [2, 3, 4]
  
  n = 10
  1: on: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] off: []
  2: on: [1, 3, 5, 7, 9] off: [2, 4, 6, 8, 10]
  3: on: [1, 5, 6, 7] off: [2, 3, 4, 8, 9, 10]
  4: on: [1, 4, 5, 6, 7, 8] off: [2, 3, 9, 10]
  5: on: [1, 4, 6, 7, 8, 10] off: [2, 3, 5, 9]
  6: on: [1, 4, 7 ,8 ,10] off: [2, 3, 5, 6, 9]
  7: on: [1, 4, 8, 10] off: [2, 3, 5, 6, 7, 9]
  8: on: [1, 4, 10] off: [2, 3, 5, 6, 7, 8, 9]
  9: on: [1, 4, 9, 10] off: [2, 3, 5, 6, 7, 8]
  10: on: [1, 4, 9] off: [2, 3, 5, 6, 7, 8, 10]
  
  rules:
    - the round number indicates the switch numbers that need to be toggled ( round 4: toggle switches 4, 8, 12...)
D:
A:
  helper method:
  - initialize a hash
    - the keys are the integers from 1..given number
    - set the values as 'off'
  main method: 
  - initialize a hash
  - initialize a round_number = 1
  - iterate through the hash the given number of 'input' times
    - on round one, iterate through the hash and change all the values to 'on'
    - on round two, iterate through the hash 
      - if the switch at switches the multiples of two are 'on', switch to 'off'
      - if the switch at switches the multiples of two are 'off', switch to 'on'
      - increment the round_number by 1
    - on round two, iterate through the hash
      - if the switch at switches the multiples of three are 'on', switch to 'off'
      - if the switch at switches the multiples of three are 'off', switch to 'on'
      - increment the round_numer by 1
    - continue to do this until the given number of rounds has been completed
  - iterate through the hash
    - return the keys where the values are 'on'
=end

def initialize_hash(int)
  hash = Hash.new
  1.upto(int).each {|num| hash[num] = 'off'}
  hash
end

def lights(int)
  hash = initialize_hash(int)  
  round = 1
  end
  until round == int
    hash.map do |k, v| 
      p k
      p v
      p round
      k % round == 0 && v == "off" ? v = "on" : v = "off"
    end
    round += 1
  end

end

p lights(10)

=begin # 5
diamonds!
write a method that takes an integer argument and returns a 4-pointed diamond in an n x n grid,
where n is the integer argument (can assume it will always be odd)
Problem: inout: integer
   output: a diamond shape with the integer argument being the total number of rows
Examples: 
diamond(1)

*

diamond(3)

 *
***
 *
 
 diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *
    
D/A: 
- initalize a variable, star and set it to '*'
- start with 1 star
- increment by 2 stars on the next line and output
- continue until you have reached the given integer and output
- decrement by 2 stars on the next line and output
- continue until you have reached 1 star and output
=end

# def diamonds(integer)
#   star = '*'
#   (1..integer).each do |int| 
#     next if int.even?
#     puts (star * int).center(integer)
#   end
#   (1...integer).reverse_each do |int|
#     next if int.even?
#     puts (star * int).center(integer)
#   end
# end

# diamonds(9)
# diamonds(3)

=begin # 6
stack machine interpratation
n Place a value n in the "register". Do not modify the stack.
PUSH Push the register value on to the stack. Leave the value in the register.
ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
POP Remove the topmost item from the stack and place in register
PRINT Print the register 
P:
  input: string
  output: integer(s)
E:
  p minilang('PRINT')# == 0
  p minilang('5 PUSH 3 MULT PRINT')# = 15
  register = 5, stack = 5, register = 3, 3 * 5 = 15,  
  p minilang('5 PRINT PUSH 3 PRINT ADD PRINT')# 5# 3# 8
  register = 5, outputs 5, stack = 5, register = 3, outputs 3, 3 + 5 = 8, outputs 8
  p minilang('3 PUSH PUSH 7 DIV MULT PRINT ')# == 6
  register = 3, stack = 3, stack = [3, 3], register = 7, register = 2, 3 * 2 = 6, outputs 6 
  p minilang('4 PUSH PUSH 7 MOD MULT PRINT ')# == 12
  register = 4, stack = 4, stack = [4, 4], register = 7, register = 3 (7 % 4), register = 12 (4 * 3), outputs 12
  rules:
  - register starts at 0
A:
  - split the intput string into single word strings
  - initialize register = 0
  - initialize stack =[]
  - iterate through the array of words
    - if the word.to_i.to_s == word
      register = word.to_i
    - if the word == PUSH
      stack << register
    - if the word == PRINT
      p register
    - if the word == ADD
      reassign register to register + last integer in the stack array
    - if the word == DIV
      reassign register to register / last integer in the stack array 
    - if the word == MOD
      reassign register to register % last integer in the stack array
    - if the word == MULT
      reassign register to register * last integer in the stack array
=end

# def minilang(string)
#   array = string.split
#   register = 0
#   stack = []
#   array.each do |word|
#     case 
#       when word.to_i.to_s == word then register = word.to_i
#       when word == 'PUSH' then stack << register
#       when word == 'PRINT' then p register
#       when word == 'ADD' then register += stack.pop
#       when word == 'MULT' then register *= stack.pop
#       when word == 'DIV' then register /= stack.pop
#       when word == 'MOD' then register %= stack.pop
#       when word == 'POP' then register = stack.pop
#       when word == 'SUB' then register -= stack.pop
#     end
#   end
# end

# p minilang('PRINT')# == 0
# p minilang('5 PUSH 3 MULT PRINT')# = 15
# p minilang('5 PRINT PUSH 3 PRINT ADD PRINT')# 5# 3# 8
# p minilang('5 PUSH POP PRINT')# == 5
# p minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')# 5# 10# 4# 7
# p minilang('3 PUSH PUSH 7 DIV MULT PRINT ')# == 6
# p minilang('4 PUSH PUSH 7 MOD MULT PRINT ')# == 12
# p minilang('-3 PUSH 5 SUB PRINT')# == 8
# p minilang('6 PUSH') # (nothing printed; no PRINT commands)

=begin # 7
word to digit
write a method that takes a sentence and returns the sentence with any sequence of the words
'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'
converted to a string of digits
P: 
  input: string
  output: same string with the integer words as integers
E:
  word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
D: hash => word : integer
A:
  - create a hash with the keys as integer strings and the values as the integer
  - split the string into an array of single word strings
  - sub any punctuations 
  - iterate through the array of strings
    - if the current string matches any key in the hash, replace it with the value of that key
  - join the array
=end

# def word_to_digit(string)
#   hash = { "one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5,
#           "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9 }
#   string.split.map do |word|
#     if punc = word.delete('a-zA-Z') != '' && hash.keys.include?(word)
#       hash[word]
#     else
      
#     end
#   end
#   # string
# end

# p word_to_digit('Please call me at five five five one two three four. Thanks.')# == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

=begin # 8
fibonacci numbers (recursion)
Write a method that computes the nth fibonacci number, where nth is the argument to the method
fibonacci series: sequence of numbers starting with 1 and 1 where each number is the
sum of the two previous numbers,  the 3rd fibonacci number is 1+1=3, the 5th is 
2+3=5 and so on.
F(1) = 1
F(2) = 1
F(n) = F(n - 1) + F(n - 2) where n > 2
P: 
  input: integer
  output: integer

E: 
fibonacci(1) == 1 => 1
fibonacci(2) == 1 => 
fibonacci(3) == 2 => 1 + 1 = 2
fibonacci(4) == 3 => 1 + 2 = 3
  1, 1, 1+1=2, 2+1=3
fibonacci(5) == 5 => 2 + 3 = 5
   1, 1, 1+1=2, 2+1=3, 3+2=5 
fibonacci(12) == 144 
  1, 1, 1+1=2, 2+1=3, 3+2=5, 5+3=8, 8+5=13, 13+8=21, 21+13=34, 34+21=55, 55+34=89, 89+55=144
fibonacci(20) == 6765

D/A:
- fibonacci method:
  - initialize `first` = 0
  - initialize `last` = 1
  - initialize `count` = 1
  - until `count` equals input integer
    - reassign `first` to `last`
    - reassign `last` to `first` plus `last`
    - increment count by 1
  - return `last`
=end

# def fibonacci(nth)
#   return 1 if nth <= 2
#   fibonacci(nth - 1) + fibonacci(nth - 2)
# end


# p fibonacci(1)# == 1
# p fibonacci(2)# == 1
# p fibonacci(3)# == 2
# p fibonacci(4)# == 3
# p fibonacci(5)# == 5
# p fibonacci(12)# == 144
# p fibonacci(20)# == 6765

=begin # 9
fibonacci numbers (procedural)

def fibonacci(nth)
  return 1 if nth <= 2
  fibonacci(nth - 1) + fibonacci(nth - 2)
end

fibonacci(4) == 3 => 1 + 2 = 3
  1, 1, 1+1=2, 2+1=3
fibonacci(5) == 5 => 2 + 3 = 5
   1, 1, 1+1=2, 2+1=3, 3+2=5 
fibonacci(12) == 144 
  1, 1, 1+1=2, 2+1=3, 3+2=5, 5+3=8, 8+5=13, 13+8=21, 21+13=34, 34+21=55, 55+34=89, 89+55=144
  
=end

# def fibonacci(nth)
#   return 1 if nth == 1 || nth == 2
#   first = 1
#   last = 1
#   sum = 0
#   count = 0
#   until count == nth - 2
#   sum = first + last
#   last = first
#   first = sum
#   count += 1
#   end
#   sum
# end

# p fibonacci(1) == 1
# p fibonacci(2) == 1
# p fibonacci(3) == 2
# p fibonacci(4) == 3
# p fibonacci(5) == 5
# p fibonacci(12) == 144
# 1, 1, 1+1=2, 2+1=3, 3+2=5, 5+3=8, 8+5=13, 13+8=21, 21+13=34, 34+21=55, 55+34=89, 89+55=144
# p fibonacci(20) == 6765
# p fibonacci(100) == 354224848179261915075
# p fibonacci(100_001) => 4202692702.....8285979669707537501

=begin # 10
fibonacci numbers (last digit)
=end

# def fibonacci_last(nth)
#   return 1 if nth == 1 || nth == 2
#   first = 1
#   last = 1
#   sum = 0
#   count = 0
#   until count == nth - 2
#   sum = first + last
#   last = first
#   first = sum
#   count += 1
#   end
#   sum.to_s[-1].to_i
# end

# p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) # -> 4