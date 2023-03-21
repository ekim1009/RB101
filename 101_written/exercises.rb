=begin
what does the following code return?  what does it output?  why?  what concept does it demonstrate?

a = 'Hello'
b = a
a = 'Goodbye'

puts a
puts b

  on line 4, we initialize the variable `a` to point to the string object `'hello'`.  On line 5, we intialize the variable `b` 
to point to the variable a.  On line 6, we are reassigning the variable `a` to point to a differene string
object `'Goodbye'`.  On lines 8 and 9, the variables are passed to the `puts` method which will output a string representation 
of the variables.  
  Line 8 will output `'Goodbye'` and line 9 will output `'Hello'`.  The concept this code demonstrates is variables
as pointers and reassignment.
=end

=begin
what does the following code return?  what does it output?  why?  what concept does it demonstrate?

a = 4

loop do
  a = 5
  b = 3
  
  break
end

puts a
puts b

  on line 22, we initialize a local variable `a` to point to the integer object 4.  On line 24, we start a loop.  Variable `a` 
is now pointing to the integer object 5.  Variable `b` is initialized to point to the integer object 3.  We 
break out of the loop on line 28.  The variable `a` and `b` are passed to the `puts` method on lines 31 and 32 which will
output a string representation of the variables.  
  Line 31 will output 5.  Line 32 will cause an error because the variable `b` was initialized inside the block passed to
the loop method.  Variables intialized inside blocks are only accessible inside the blocks.  
  This demonstrates variable scoping rules.  The scoping rules for blocks are that variables initialized outside of the block are accessible 
inside the block, but variables initialized inside the block are not accessible outside the block.  Since the variable `a` which was
initialized outside the block is accessible inside the block, we are reassigning the variable `a` to point to integer object 5.
=end

=begin
what does the following code return?  what does it output?  why?  what concept does it demonstrate?

a = 4
b = 2

loop do
  c = 3
  a = c
  break
end

puts a
puts b

  On line 48, we initialize the variable `a` to point to the integer object 4.  On line 49, we initialize
the variable `b` to point to the integer object 2.  We start a loop on line 51.  We initialize a 
variable `c` to point to the integer object 3.  On line 53, we access the variable `a` which was initialized outside
the block to point to integer object 3.  We then break out of the loop.  On lines 57 and 58, the variables
`a` and `b` are being passed to the `puts` method which will outpus a string representation of the variables. 
  Line 57 will output 3.  Line 58 will output 2.
  This demonstrates variable scoping rules.  The scoping rules for blocks are that variables initialized outside of the block are accessible 
inside the block, but variables initialized inside the block are not accessible outside the block.  Since the variable `a` which was
initialized outside the block is accessible inside the block, we are reassigning the variable `a` to point to integer object 3.
Since variable `b` was initialized outside the block, the scoping rules do not apply to the variable `b`.
=end

=begin 
What does the following code return? What does it output? Why? What concept does it demonstrate?

def example(str)
  i = 3
  loop do
    puts str
    i -= 1
    break if i == 0
  end
end

example('hello')

  On line 84, the method `example` is being called with the argument object string `'hello'` passed to it.
The argument passed to the method `example` takes the place of the parameter `str` on line 75.
On line 76, the variable `i` is being initialized and point to the integer object 3.  We start a
loop on line 77.  the variable `str` is being passed to the `puts` method which will output a string
representation of it.  Line 79 decrements the value of `i` by 1.  The breaking condition is if `i == 0`
which is not met on the first loop so we will go back to the beginning of the loop and repeat outputing 
and decrementing the variable `i` until the break condition is met.  On the third loop, the breaking
condition is met and we will break out of the loop.
  Line 84 will output the string 'hello' three times on separate lines and return `nil`.
  This demonstrates looping.  A loop begins with `loop do` and will carry out the code inside the loop
until the breaking condition is met.
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

def greetings(str)
  puts str
  puts 'Goodbye'
end

word = 'Hello'
greetings(word)

  On line 107, we initialize the variable `word` to point to the string object `Hello'.  On line 
108, we call the `greetings` method and pass in the argument `word` to it.  The string object that
the variable `word` is point to gets passed into the method and takes the place of the parameter `str`.
On line 103, the string object 'Hello' is being passed to the `puts` method which will output a string 
representation of the object.  On line 104, the string object 'Goodbye' is being passed to the `puts`
method which will output a string representation of the object.  We end the method on line 105.
  This method will output the strings `'Hello'` and `'Goodbye'` on separate lines and return `nil`.  
This method returns `nil` because there is no explicit `return` in the method so the last line of code 
will be evaulated as the return.  The `puts` method always returns `nil`.
  This example demonstrates 
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

arr = [1, 2, 3, 4]
counter = 0
sum = 0

loop do
  sum += arr[counter]
  counter += 1
  break if counter == arr.size
end

puts "Your total is #{sum}"

  On line 125, we initialize the variable `arr` to point to an array object of integers.  On line 126, we
intialize a variable `counter` to point to the integer object 0.  On line 127, we initialize the variable
`sum` to point to the integer object 0.  We begin a loop on line 129.  On line 130, we are 
incrementing the sum by the integer located at the index `counter`, which is currently `0`, in the array.
we increment the counter by 1 on line 131.  Since the breaking condition is not met, we go back to the
beginning of the loop and increment the new `sum` value by the integer located at the index `counter` in the array.
Because the counter was incremented in the last loop, the index position will be one greater than the last.
This will continue until the breaking condition `counter == arr.size` is met.  Once the breaking 
condition is met and we break out of the loop, the string "Your total is #{sum}" is passed to the
`puts` method which will output a string representation of it.  
  This example will output the string "Your total is 10" and return `nil`.  The string that is passed into the `puts`
method uses string interpolation which uses placeholders that reference other values.  In this case, the
`#{sum}` refers to the integer object of the variable `sum` after the loop takes place.  A loop will
return `nil`.
  This example demonstrates string interpolation, and variable scoping rules.  Variables intialized
outside of a block are accessible inside a block which we see here.
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

a = 'Bob'

5.times do |x|
  a = 'Bill'
end

p a

  On line 158, we initialize the variable `a` to point to the string object 'Bob'.  On line 160, we pass the 
`times` method to the integer `5` and pass in block with the parameter `x`.  The times method will repeat what is
inside the block the number of times it is being passed to.  Inside the block, we reassign the variable `a` to 
the string object `'Bill'`.  On line 164, the variable `a` is being passed to the `p` methos where the object is passed
to the `inspect` method and the object you pass to it will be returned.
  The `times` method will return the object it was called on `5`.  The `p` method will return `'Bill'`.
  This example demonstrates variable scoping rules.  A block is passed to the `times` method which creates
a scoping rule.  Variables initialize outside of blocks can be accessed inside blocks but not vice versa.
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

animal = 'dog'

loop do |_|
  animal = 'cat'
  var = 'ball'
  break
end

puts animal
puts var

  The variable `animal` is initialized on line 179 to point to the string object 'dog'.  On line
181, a block is passed to the `loop` method with a parameter `_`.  Inside the loop, we reassign the
variable `animal` to the string object `'cat'` since variable initialized outside of blocks are
accessible inside blocks.  The variable `var` on line 183 is initialized to point to the string
object 'ball'.  We break out of the loop on line 184.  On lines 187 and 188, the variables `animal` and `var`
are passed to the `puts` method which will output a string representation of the object.
  Line 187 will output 'cat', line 188 will cause an error, and the loop method will return `nil`.
  This example demonstrates variable scoping rules.  The scoping rules for blocks are that
variables initialized outside the block are accessible inside the block but not vice versa.  Due
to the scoping rules, the variable `animal` was reassigned to the string object 'cat'.  The 
variable `var` was initialized inside the block so is not accessible outside when we pass it to
the `puts` method.

\\\\\\\

# Local variable referencing an object
# Method call/invocation and method definition
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

n = 101.times do |n|
      n = 11
    end
    
puts n

  On line 207, we are initializing the variable `n` to point to the return value of the `times` method
that is being passed to the integer `101`.  A block is passed to the `times` method with the parameter `n`.  
Since the variable outside the block `n` is the same as parameter `n`, variable shadowing happens
where the outer scoped variable is not accessible inside the block.  Due to this, we are essentially not
reassigning the variable `n` to the integer object 11.  The `times` method will return the integer
that it was passed to.  The variable `n` is passed to the `puts` method which will output a string
representation of the object.
  The `times` method will return the object it was called on, `101` which will set the outer variable `n` to the 
integer object `101.  The `puts` method will output a string string representation of the variable `n` and return `nil`.
  This example demonstrates variable shadowing.  If a block parameter and an outer scoped variable
have the same name, This creates variable shadowing where the variable inside the block cannot access
the variable with the same name outside the block.
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

animal = 'dog'

loop do |animal|
  animal = 'cat'
  break
end

puts animal

  On line 232, the variable `animal` is initialized and point to the string object`dog`.  A block
is being passed to the `loop` method with a parameter `animal`.  Since the parameter has the same name
as the variable in the outer scope, the block is not able to access the variable outside.
The variable `animal` is passed to the `puts` method which will output a string representation
of the object.
  The loop will return `nil` and the `puts` method on line 237 will output the string object `'dog'`
and return `nil`.
  The example demonstrates variable shadowing.  If a parameter name and a variable initialized outside the block
share the same name, this creates variable shadowiing where the block is not able to access the 
variable in the outer scope.
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

a = 'hi there'
b = a
a = 'not here'

what are `a` and `b`?

  The variable `a` is initialized on line 254 to points to the string object 'hi there'.  The 
variable `b` is initialized on line 255 and points to the variable `a`.  The variable `a` is 
reassigned to the string object 'not here' on line 256.  
  The variable `a` is pointing to the string object 'not here' and the variable `b` is pointing
to the string object 'hi there'.
  This example demonstrates variables as pointers.  When variables are initialized, they point to
an space in memory.  On line 255, the variable `b` is pointint to the variable `a` which points to the
string object 'hi there', essentially having both variables point to the same string object.
When we reassign variable `a` to the string object 'not there', we are creating a new space in memory
to the string object 'not here' and having the variable `a` point to it.  When we reassign variable
`a` to a new string object, the variable `b` still points to the string object 'hi there'.
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

a = 'hi there'
b = a
a << ', Bob'

What are `a` and `b`?

  The variable `a` is initialized on line 276 and points to the string object 'hi there'.  The
variable `b` is initialized on line 277 and points to the variable `a`.  On line 278, the `<<` 
method is used which is a mutating method.  The `<<` method appends the object on the right side
of it to the object on the left side of it.  
  The variables `a` and `b` are both pointing to the string onbject 'hi there, Bob'.
  This example demonstrates variables as pointers and mutating methods.  On lines 276 and 
277, `a` and `b` are both pointing to the same string object.  the `<<` method is applied to 
the variable `a` which will mutated the string object it is pointing at by appending the 
string object on the right of the `<<` to it.  Since the `<<` mutates the original string object
variable `a` is pointing to, variable `b` will be pointing to the same string object.
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

a = [1, 2, 3, 3]
b = a
c = a.uniq

What are `a`, `b`, and `c`.  
What if the last line was `c = a.uniq!`?

  On line 297, the variable `a` is initialized and points to the array '[1, 2, 3, 3]'.  On line
298, the variable `b` is initialized and points to the variable `a`.  On line 299, the
variable `c` is initialized and points to the variable `a` with the `uniq` method passed to it.
The `uniq` method is a non mutating method which will return a new array with all of the 
repeated elements removed.
  The variable `a` points to the array object '[1, 2, 3, 3]'.  The variable `b` points to the
array object '[1, 2, 3, 3]'.  The variable `c` points to the array object '[1, 2, 3]'.  
  This examples demonstrates variables as pointers and non mutating methods.  The `uniq` method
that is passed to the variable `a` returns a new array with duplicate values removed, therefore 
variable `c` points to a different array object than variables `a` and `b`.
  If we were to use the `uniq!` method instead of the `uniq` method, variables `a`, `b`, and `c`
would all be pointing to the same array object.  The `uniq!` method is a destructive method and
will return the same object it was called on with all duplicates removed.
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)

  On `line 327`, the method `test` is being called and passed in the argument of variable `a`.  The
variable `a` is initialized on `line 326` and points to an array object with string elements.  The array 
object gets passed into the method by taking the place of the parameter `b`.  The `map` method is called
on the variable `b` with a block with the parameter `letter`.  The `map` method takes the return value
of the block to perform transformation and returns a new array.  The return value of the block is a string 
object with string interpolation.
  `Line 327` will return a new object array of strings: `["I like the letter: a", 'I like the letter: b", "I like the letter:c]`
The return value of the `map` method is a string object which `map` will take and transform each element in the
calling array to the return value of the block.
  This example demonstrates the `map` method.  The map method uses the return value of the block passed to it
to perform transformation and will return a new array with the transformed elements.
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

a = 5.2
b = 7.3
a = b
b += 1.1

What is `a` and `b`?  Why?

  On `line 345` the local variable `a` is initialized and points to the integer object `5.2`.  On `line 346` the variable `b` 
is initialized and points to the integer object `7.3`.  On `line 347`, the variable `a` is reassigned to the same
integer object as variable `b`, which is `7.3`.  On line 348, variable `b` is reassigned to the integer object `7.3`
added to integer object `1.1`, which points to a new integer object entirely.
  The value of variable `a` is `7.3` and the value of variable `b` is `8.4`.  
  This example demonstrates reassignment.  Because integers cannot be mutated in Ruby, when variable `a` is set
to variable `b` on `line 347`, we are essentially creating a new variable `a`.  This applies for the variable
`b` on `line 348` also.  `b += 1.1` is another way to write `b = b + 1.1`.  Since integers cannot be mutated, a 
new variable `b` is being initialized and points to the result of `line 348`.

\\\\\

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

a = 5.2
b = 7.3
a = b
b += 1.1 # b = b + 1.1

What is `a` and `b`?  Why?

  On `line 345` the (local) variable `a` is initialized and points to the integer object `5.2`.  On `line 346` the (local) variable `b` is initialized and points to the integer object `7.3`.  On `line 347`, the variable `a` is reassigned to the same integer object as variable `b`, which is `7.3`.  On line 348, variable `b` is reassigned to the integer object `7.3` added to integer object `1.1`, which points to a new integer object entirely.
  
  The value of the integer referenced by local variable `a` is `7.3` and the value of variable `b` is `8.4`.  
  
  This example demonstrates reassignment.  Because integers cannot be mutated in Ruby, when variable `a` is set to variable `b` on `line 347`, we are reassigning it to  a new integer object.  This applies for the variable `b` on `line 348` also.  `b += 1.1` is another way to write `b = b + 1.1`.  Since integers cannot be mutated, a new variable `b` is being initialized and points to the result of `line 348`.

On `line 347`, the variable `a` is reassigned to the integer object referenced by local variable `b`, which is `7.3`.

The integer referenced by local variable `b` is incremented by 1.1 and local variable `b` is reassigned to this new integer. 

=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

def test(str)
  str += '!'
  str.downcase!
end

test_str = 'Written Assessment'
test(test_str)
puts test_str

  On `line 371`, the variable `test_str` is being initialized and points to the string object
'Written Assessment'.  On `line 372`, the test method is being called and passed in the 
argument `test_str`.  The string object which variable `test_str` points to is passed into the
method by taking the place of the parameter `str`.  The non-mutating method `+=` is performed on the
string object passed in which initializes a new variable `str` to point to the string object
'Written Assessment!'.  The mutating `downcase!` method is then called on the newly created variable 
`str` which mutates every letter into the lowercase version which is then returned.  The variable `test_str` 
is passed to the `puts` method which outputs a string representation of the object.
  `Line 327` will return 'written assessment!' and `line 373` will output 'Written Assessment' and return `nil`.
The `puts` method always outputs something and returns `nil`.
  This example demonstrates pass by value.  A reference to the string object 'Written Assessment' is passed
into the method.  The method then creates a new varible and perform addition with the new variable.  
This is pass by value because the calling object has not been mutated.
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

def plus(x, y)
  x = x + y
end

a = 3
b = plus(a, 2)

puts a
puts b

  On `line 397`, the variable `a` is initialized and points to the integer object `3`.  On `line 398`, the
variable `b` is initialized and points to the return value of the method `plus` being called with the
arguments `a` and `2` being passed in.  A reference to the integer object `a` gets passed into the method
`plus`.  The non-mutating `+=` method is called on the variable `x` which initializes a new variable `x` to 
point the to integer object of `3 + 2` which equals `5` and will implicitly return it.  On `lines 400 and 401`, the 
variables `a` and `b` are passed into the `puts` method which will output a string representation of the object.  
  `Line 400` will output `3` and return `nil`.  `Line 401` will output `5` and return `nil`.
  This example demonstrates pass by value.  A reference to the integer object `3` is passed into the method.
The method then creates a new variable and perform addition with the new variable.  This is pass by value
because the calling object has not been mutated.
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

def increment(x)
  x << 'b'
end

y = 'a'
increment(y)
puts y

  On `line 422`, the variable `y` is intialized and points to the string object `'a'`.  The `increment` method
is called on `line 423` with the variable `y` passed in as the argument.  The `<<` method is a mutating method 
which appends the object on the right side of it to the object on the left side of it.  In the `increment` method,
we are appending the string object `b` to the string object `a` which was passed in as the argument.  The 
`increment` method will implicitly return the mutated string object `'ab'`.  The variable `y` is passed to the
`puts` method which will output output a string representation of the object and return `nil`.
  `Line 423` will return `ab`.  `Line 424` will output `'ab'` and return `nil`.
  This example demonstrates pass by reference.  the `<<` method is a mutating method which will alter the original
object that was passed into the argument.
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

def change_name(name)
  name = 'bob' # does this reassignment change the object outside the method?
end

name = 'jim'
change_name(name)
puts name

  On line 472, the local variable `name` is initialized and points to the string object
`'jim'`.  On line 473, we invoke the method `change_name` and pass in the variable `name`
to the method.  The `change_name` method is defined starging on line 468.  The variable
`name` is reassigned to the string object `bob' and returns it.  The method ends on line 470.  
The variable `name` is passed to the `puts` method as an argument which outputs a string
representation of the argument.
  Line 473 will not output anything and will return `'bob'`.  Line 474 will output `'jim'` and
return `nil`.  Although the name `'jim'` was reassigned in the `change_name` method, the local variable
`name` inside the method is only accesible inside the method due to scoping rules, therefore the 
local variable that is passed into the `puts` method will output the string object of the variable
that was initialized outside the method.
  This concept demonstrates reassignment and scoping rules.  We see that the method does reassign 
the local variable `'name'` and returns it, but due to the scoping rules of methods, variables that
are initialized inside methods are not accessible outside methods.
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?


def cap(str)
  str.capitalize! # does this affect the objet outside the method?
end

name = 'jim'
cap(name)
puts name

  A local variable `name` is initialized on line 500 and points to the string object
`'jim'`.  The method `cap` is invoked on line 501 with the local varible `name` 
passed to it.  The method definition for `cap` begins on line 496 which requires 
one parameter.  The variable `name` takes the place of the parameter `str` and is 
passed in to the method.  The `capitalize!`, a mutating method, is invoked on the 
local variable `name` which mutates the string object local variable `name` to `'Jim'`.
The local variable `name` is passed to the `puts` method on line 502 which will output
a string represention of it and return `nil`.
  The method invocation of the method `cap` with the argument `name` passed to it will
return `'Jim'`.  The `puts` method with the variable `name` passed to it will output 
`'Jim'` and return `nil` because `puts` always returns `nil`.
  This example demonstrates pass by reference.  The method is performing a mutating action,
therefore, is mutating the calling object.
=end

=begin
What is `arr`? Why? What concept does it demonstrate?

a = [1, 3]
b = [2]
arr = [a, b]
arr
a[1] = 5 
arr

  The local variable `a` is initialized on line 522 and points to the array object `[1, 3]`.  The
local variable `b` is initialized on line 523 and points to the array object `[2]`.  The local
variable `arr` is initialized on line 524 and points to array object `[a, b]`.  The `[]=` method, 
which is a mutating method, in the `array` class is invoked on line 526 to the local variable `a`.  
The integer object at index `1` in the array object that variable `a` is pointing to will be mutated 
to integer object `5`. 
  The local variable `arr` on line 525 points to the nested array object `[[1, 3], [2]]`.  The local
variable `arr` on line 527 points to the nested array object `[[1, 5], [2]]` because of the mutating
method `[]=` that was applied to integer object `3`.
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?
What values do `s` and `t` have? Why?

def fix(value)  
  value.upcase!  
  value.concat('!')
  value
end

s = 'hello'
t = fix(s)

  The local variable `s` is initialized on line 550 and points to the string object `'hello'`.
The local variable `t` is initialized on line 551 and points to the return value of the method
`fix` with local variable `s` passed to it as an argument.  The `fix` method is invoked on line
551 with the local variable `s` passed to it as an argument.  The method definition for `fix` is
defined on lines 544 - 548.  The local variable `s` takes the place of the parameter `value`.  The
mutating method `upcase!` is invoked on the variable `s`.  The mutating method `concat` is invoked
on the variable `s` with the string object `'!'`.  The variable `s` is then implicitly returned.
  The local variable `s` on line 550 points to the string object `'HELLO!'` since the methods 
invoked in the method are mutating.  The local variable `t` on line 551 points to the same string
object as variable `s`.
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?
What values do `s` and `t` have? Why?

def fix(value)
  value << 'xyz'  
  value = value.upcase  
  value.concat('!')
end

s = 'hello'
t = fix(s)

  The local variable `s` is initialized on line 575 and points to the string object `'hello'`.
The local variable `t` is initialized on line 576 and points to the return value of the `fix` method
with variable `s` passed to it as an argument.  The method definition for `fix` are on lines 569 - 573.
The variable `s` takes the place of the parameter `value` and the `<<` method is called on the variable
`s` to append the string object `'xyz'` to it returning `'helloxyz'`.  A block scope variable `value` is
initialized on line 571 and points to the return value of the `upcase` method passed to the variable `s`, `'HELLOXYZ'`.
The variable `value` has the mutating method `concat` invoked on it with the parameter `'!'` passed to it, 
on line 572, which will return `'HELLOXYZ!'`.
  The variable `s` on line 575 is still pointing to the same, but mutated, string object `'helloxyz'`.
The variable `t` on line 576 is pointing to a different string object than variable `s` is pointing
to.  Variable `t` is pointing to the string object `'HELLOXYZ!'`.
  This example demonstrates variables as pointers and scoping rules.  The `<<` method is a mutating method
so mutatesthe calling object.  Line 571 initializes a new variable `value` and points to the string object 
`'Helloxyz'`.  The concat method is then invoked on the newly created variable `value` and does not
mutate the string object that variable `s` is pointing to.
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?
What values do `s` and `t` have? Why?

def fix(value)
  value = value.upcase! 
  value.concat('!')
end

s = 'hello'
t = fix(s)

  The local variable `s` is initialized on line 604 and points to the string object `'hello'`.  The local
variable `t` is initialized on line 605 and points to the return value of the method `fix` with the variable
`s` passed to it as an argument.  The method definition for `fix` are on lines 599 - 602, and the method takes 
one parameter.  The variable `s` takes the place of the parameter `value` and is passed into the method.  A
method scoped variable `value` is initialized and points to the return value of the passed in variable `value`
with the destructive `upcase!` method passed to it which will return `'Hello'` and mutate the calling variable
to `'Hello'`.  The method scoped variable `value` than hass the destructive `concat` method passed to it with the
parameter of `('!')` passed to it which will return `'Hello!'`.  The method will implicitly return `'Hello!'` 
because that is the last line of code in the method with no explicit `return`.
  Line 604 points to the string object `'Hello'` and line 605 points to the string object `'Hello!'`.
  This example demonstrates variables as pointers and destructive methods.  The variable `s` is being passed in
to the method and has the destructive method passed to it, but once the block scoped variable `value` is 
initizlized, any other method (destructive or non destructive) will be passed to the block scoped variable.
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?
What values do `s` and `t` have? Why?

def fix(value)
  value[1] = 'x' 
  value
end

s = 'abc'
t = fix(s)

#   The local variable `s` is initialized on line 631 and points to string object `'abc'`.  The local variable
# `t` is initialized on line 632 and points to the return value of the method `fix` with variable `s` passed
# to it as an argument.  The method definition for `fix` are on lines 626 - 629 which require one parameter.  The
# variable `s` takes the place of the parameter `value` and is passed into the method.  The destructive `str[]=` 
# method is passed to variable `s` which will mutate it's current value at index `[1]` and set it to string object
# `'x'`.  Variable `s` is then implicitly returned since it is the last line of code in a method without an explicit `return`.
#   Line 631 points to mutated string object `'axc'`.  Line 632 points to the same string object `'axc'`.
#   This example demonstrates variables as pointers and destructive methods.  The `[]=` is a destructive method
# which will replace the element at the index inside the `[]` and mutate it to the element on the right of the `=`.
=end

=begin 
What does the following code return? What does it output? Why? What concept does it demonstrate?

def a_method(string) 
  string << ' world'
end

a = 'hello'
a_method(a)
p a

  The local variable `a` is initialized on line 652 and points to string object `'hello'`.  The `a_method` is invoked
on line 653 and has the variable `a` passed to it as an argument.  The method definition for `a_method` are on lines
648 - 650.  The variable `a` takes the place of the parameter `string` and gets passed into the method.  The 
destructive `<<` method is called on the variable `a` and appends the string object `' world'` to it and 
is implicitly returned.  The `p` method is invoked on line 654 and has the variable `a` passed to it as an argument
which will output the string object which variable `a` is pointing to and return `nil`.
  This example demonstrates pass by reference since we are mutating the calling object.
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

a = %w(a b c)
a[1] = '-'
p a

  The local variable `a` is initialized on line 668 and points to the array `[a, b, c]`.  On line 669, we
invoke the destructive `[]=` method on variable `a`.  The element at index `[1]` is mutated to the string 
object `'-'`.  On line 670, the `p` method is invoked and passed the variable `a` as an argument which will
return the object you pass to it which is the calling object that has been mutated, `[a, -, c]`.
  This example demonstrates variables as pointers and destructive methods.  The `[]=` is a destructive method
which will mutate the object at the index inside the `[]` and mutate it to the object on the right of `[]=`.
=end

=begin
What does the following code return? What does it output? Why? What concept does it 	demonstrate?
=end
array = [1, 2, 3, 4, 5]

array.select do |num|   
  puts num if num.odd?
end
=begin
  The local variable `array` is initialized on line 683 and points to the array object `[1, 2, 3, 4, 5]`.  On
line 685, the `select` method is invoked on the variable `array` with a `do..end` block passed to it with a
parameter `num`.  Each element in the `[1, 2, 3, 4, 5]` will take the place of the parameter in turn and the
`select` method will evaluate the return value of the block to perform selection and return a new array with
the selected elements.  The `puts` method is invoked on line 686 and the variables in turn will be passed to it
as an argument and output a string representation of the object and return `nil`.  The `odd` method is called 
on the current variable in each iteration and return a `true` if the integer is odd and `false` if it is an 
even integer.  Since there is no explicit `return` within the block, the last line of code is evaluted which 
evalutes as `false`, therefore the `select` method will return an empty array.
  This example demonstrates selection on a collection.  We are using the `select` method with a block to 
perform selection.  `Select` only cares about the return value of the block and will select all the elements
in the calling object that satisfy the code within the block.  If the block evaluates as `false`, then an empty
array will be returned which we see here.
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.select { |n| n.odd? }

  The local variable `arr` is initialized on line 707 and points to the array object `[1, 2, 3, 4, 5, 6, 7, 8, 9,10]`.
The `select` method is invoked on the variable `arr` with a `{}` block passed to it.  Each element within the 
calling object will be passed into the block in turn and take the place of the parameter `n`.  The `odd?` method
is invoked on each element in turn and will return `true` if the element is an odd number and `false` if the 
element is an even number.  If the block passed to the `Select` method evaluated as `true`, a new array with the
elements which satisfy the condition will be returned.  If the block evaluates as `false`, an empty array will be
returned.
  Line 709 will output nothing and return a new array object `[1, 3, 6, 9]`.
  This example demonstrates selection.  
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_array = arr.select do |n|   
  n + 1
end

p new_array

  The local variable `arr` is initialized on line 725 and points to the array object
`[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`.  The local variable `new_array` is initialized on line 726 and points to the
return value of the `select` method being invoked on the variable `arr`.  A `do..end` block is passed to the
`select` method where the return value of the block will determine selection.  Each element in the array object
that `arr` is pointing to will be passed into the block in turn and take the place of the parameter `n`.  Since 
there is no explicit `return` the last line of code within the block will be returned.  `n + 1` evalutes as `true`,
so each element will be selected and a new array with all of the elements will be returned.  The `p` method is
invoked on line 730 with the argument `new_array` passed to it which will output and return the calling object.
  This example demonstrates selection.  
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_array = arr.select do |n|   
  n + 1  
  puts n
end

p new_array

  The local variable `arr` is initialized on line 746 and points to the array object 
`[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`.  The local variable `new_array` is initialized on line 747 and points to the
return value of the `select` method with a `do..end` block being invoked on the variable `arr`.  Each element
in the calling object will be passed into the block in turn and take the place of the parameter `n`.  Since there
is no explicit `return`, the last line of code within the block will be evaluated as the `return` value of the
block.  The `puts` method is invoked on line 749 and passed the argument `n` which will output `n` and return 
`nil`.  Due to the block evaluating as `false` an new empty array will be returned.  On line 752, the `p` method
is invoked with the variable `new_array` passed to it as an argument which will output and return the calling object.
  This example demonstrates selection.
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

words = %w(jump trip laugh run talk)
new_array = words.map do |word|  
  word.start_with?("t")
end

p new_array

  The local variable `words` is initialized on line 768 and points to the array object `[jump, trip, laugh, run, talk]`.
The local variable `new_array` is initialized on line 767 and points to the return value of the `map` method
being invoked on the variable `words`.  The `map` method is invoked on the variable `words` and has a `do..end`
block passed to it.  Each element in the collection `words` will be passed into the block in turn and take the
place of the parameter `word`.  The `map` method uses the `return` value to perform transformation.  Since there
is no explicit `return`, the last line of code within the block will be evaluated as the return value of the block.
The `start_with?` method is invoked on each element and returns a `true` if the string begins with the string
object passed to the `start_with?` method `('t')` and `false` otherwise.  The `map` method will take the return
value for each iteration and return a new array with each element transformed into a the boolean that is returned
with each iteration.  The `p` method is invoked on line 773 with the variable `new_array` passed to it which will 
output and return the calling object.
  This example demonstrates transformation based on the return value of a block.
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |n| puts n }

  The local variable `arr` is initialized on line 792 and points to the array object
`[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`.  The `each` method is called on the variable `arr` with a `do..end`
block passed to it.  Each element in the calling object will be passed in turn into the block and take the place of
the parameter `n`.  The `puts` method is invoked with the block scoped variable `n` passed to it which will
output a string representation of the calling object and return `nil`.  The `each` method does do anything
with the return value of the block passed to it and will return the calling object.
  Each element in the calling object will be output on new lines and the calling object will be returned.
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
incremented = arr.map do |n|             
  n + 1           
end

p incremented

  The local variable `arr` is initialized on line 807 and points to the array object
`[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`.  The local variable `incremented` is initialized on line 808 and points
to the return value of the `map` method being invoked on the variable `arr`.  The `map` method takes the
return value of the `do..end` block passed to it and returns a new array with each element transformed.  
Each element in the calline object will be passed into the block in turn and take the place of the parameter
`n`.  Since there is no explicit `return` in the block, the last line of code within the block will be the
return value which here evaluates as `true`.  Since the return value of the block for each iteration evaluates
as `true`, the `+` method is invoked on the block scope variable `n` and incremented by the integer on the right
of it `1`.  The `p` method is invoked on line 812 with the variable `incremented` pass to it as an argument which
will output and return the calling object.
  The map method will return a new array with each element in the calling object incremeted by 1.  Line 812
will output and return `[2, 3, 4, 5, 6, 7, 8, 9, 10, 11]`.
  This example demonstrates transformation.  
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_array = arr.map do |n|   
  n > 1
end

p new_array

  The local variable `arr` is initialized on line 832 and points to the array object `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`.
The local variable `new_array` is initialized on line 833 a points to the return value of the `map` method
being invoked on the variable `arr`.  The `map` method is invoked on variable `arr` and has a `do..end` block
passed to it.  Each element in the calling object will be passed into the block in turn and take the place
of the parameter `n`.  `Map` uses the return value of the block to perform transformation on each element and return
it in a new array.  Since there is no explicit `return` the last line of code within the block will evaluated as
the return value of the block.  `>` is a comparison method which will return a `true` if the integer on the left
side of `>` is greater than the integer on the right and false otherwise.  `Map` will return a new array with
either `true` or `false` for each iteration based on the comparison.  The `p` method is invoked on line 837 with
the variable `new_array` passed to it as an argument which will output and return the calling object.
  The `map` method will return `[false, true, true, true, true, true, true, true, true, true]`.  The `p` method
will output and return `[false, true, true, true, true, true, true, true, true, true]`.
  This example demonstrates transformation.
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_array = arr.map do |n|  
  n > 1 
  puts n
end

p new_array

  The local variable `arr` is initialized on line 857 and points to the array object `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`.
The local variable `new_array` is initialized on line 858 and points to the return value of the `map` method
being invoked on the variable `arr`.  The `map` method is invoked on the variable `arr` with a `do..end` block
passed to it.  Each element in the calling array will be passed into the block in turn and take the place of
the parameter `n`.  The `map` method uses the return value of the block to perform transformation.  Since there
is no explicit `return`, the last line of code within the block is what will be evaluated as the return value.
The `puts` method is invoked on line 860 with the block scoped variable `n` passed to it which will output
the calling object and return `nil`.  The last line of code within the block returns `nil`, so `map` will return
a new array of `nil`'s.
  The `map` method will output each element in the calling object on new lines and return 
`[nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]`.  The `p` method will both output and return 
`[nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]`.
  This example demonstrates transformation.
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

a = "hello"
[1, 2, 3].map { |num| a }

  The local variable `a` is initialized on line 883 and points to the string object `'hello'`.  The array object
`[1, 2, 3]` is initialized on line 844 and the `map` method is invoked on it with a `{}` block passed to it.  Each
element in the calling object will be passed into the block in turn and take the place of the parameter `num`.
Since there is no explicit `return`, the last line of code within the block will be evaluated as the return value.
The return value of the `map` method is the string object `'hello'` which is what will be used to perform
transformation.  The `map` method will return a new array of `'hello'`'s.
  The `map` method will return `['hello', 'hello', 'hello'].
  This example demonstrates transformation.
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

[1, 2, 3].each do |num|  
  puts num
end

  A `do..end` block is passed to the `each` method and is invoked on the array object `[1, 2, 3]`.  Each element
in the array is passed into the block in turn and takes the place of the parameter `num`.  The `puts` method is
invoked on line 900 with the block scoped variable `num` passed to it as an argument.  The `puts` method will output
a string representation of the object in turn and return `nil`.  The `each` method does not take into account the
return value of the block and will return the calling object.
  This method will return the calling object `[1, 2, 3]` and output the integers `1`, `2`, and `3` on new lines.
  This example demonstrates iteration.
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

a = "Hello"
if a  
  puts "Hello is truthy"
else  
  puts "Hello is falsey"
end

  The local variable `a` is initialized on line 915 and points to the string object `'Hello'`.  On line 916, an
if statement begins.  The variable `a` is the condition that needs to be evaluated as true for the code on line
917 to be executed, else the condition following the `else` statment on line 919 will be executed.  Everything
in Ruby evaluates as `true` except for `false` and `nil`.  In this case, variable `a` will evaluate as `true`, 
therefore the `puts` method will be invoked and the string object `'Hello is truthy'` will to it as an 
argument which will output the string object and return `nil`.
  The string `'Hello is truthy'` will be output and `nil` will be returned.
  This example demonstrates truthiness.  Truthiness is a concept that is different from the boolean `true`.
Everything in ruby evaluates as `true` except `false` and `nil`, but evaluating as `true` and the boolean `true`
are two different things.
=end

#spot assessment questions - Alex Sklar

=begin # 1
What does the following code return? What does it output? Why? What concept does it demonstrate?

a = 'Hello'
b = a
a = 'Goodbye'

puts a
puts b

  Line 943 will output 'Goodbye' and return `nil`.  Line 944 will output 'Hello' and return `nil`.  
  Local variable `a` is initialized on line 939 and points to string object `'Hello'`.  Local variable `b` is
initialized on line 940 and points to the same string object, `'Hello'`, that `a` is pointing to.  The variable
`a` is reassigned on line 941 to point to string object `'Goodbye'`.  
  This example demonstrates variables as pointers.  Since variables are not set to, but point
to spaces in memory, when `a` gets reassigned to point to another object, this does not change what `b` is
pointing to.
=end

=begin # 2
What does the following code return? What does it output? Why? What concept does it demonstrate?

a = 4

loop do
  a = 5
  b = 3
  break
end

puts a
puts b

  Line 966 will output `4` and return `nil`.  Line 967 will cause an error due to scoping rules in Ruby.
  The local variable `a` is initialized on line 958 and points to integer object `4`.  A `do..end` block
is passed to the `loop` method on line 960.  Inside the loop, we reassign the variable `a` to point to integer
object `5` and initialize a block scoped variable `b` to point to integer object `3` and `break` break's us 
out of the `loop`.  
  This example demonstrates scoping rules.  When variable `a` is initialized outside of any methods or blocks,
it is accessible anywhere in the program.  Variables intialized inside blocks have different scoping rules.  
Variables initialized outside of a block can be accessed within the block, but variables initialized inside
blocks are not accessible outside the block which is why line 967 causes an error.
=end

=begin # 3
What does the following code return? What does it output? Why? What concept does it demonstrate?

a = 4 
b = 2

loop do
  c = 3
  a = c
  break
end

puts a
puts b

  Line 995 will output `3` and return `nil`.  Line 993 will output `2` and return `nil`.
  This example demonstrates scoping rules. Local variable `a` is inialized on line 983 and points to integer
object `4`.  Local variable `b` is inialized on line 984 and points to integer `2`.  A `do`..end` block is passed
to the `loop` method on line 986.  Within the loop, a block scoped variable `c` is intialized and points to
integer object `3`.  On line 988, `a` is reassigned to point to the same integer object `c` is pointing to, `3`.
`Break` break's us out of the loop.  Block scoping rules allow variables initialized outisde the block to be 
accessed inside the block, but variables initialized within a block cannot be accessed outside of it.  Line 988
is reassigning the local variable `a`, which was initialized outside the block to object integer `4`, and is having
it point to integer object `3`
=end

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

def example(str)
  i = 3
  loop do
    puts str
    i -= 1
    break if i == 0
  end
end

example('hello')

  Line 1018 will output `'hello'` three times on separate lines and return `nil`.  
  This example demonstrates looping.  The method `example` is invoked on line 1018 and passed
in the string object `'hello'` as an argument.  The method is defined on lines 1009 - 1016.  
The string object `'hello'` takes the place of the parameter `str` and gets passed into the 
method where `str` is a method scoped variable.  The method scoped variable `i` is initialized
and points to integer object `3`.  A `do..end` block is passed to a `loop` method on line 1011.  
Within the loop, the `puts` method is invoked and variable `str` is passed to it which will output
the string object `str` is pointing to, `'hello'`.  The integer object variable `i` is pointing to
will be decremented by `1`.  The breaking condition is not met, so we go back to the top of the loop
and repeat those steps until we meet the breaking condition, `i == 0`, which will break us out of the 
`loop` and end the method.  Since there is no explicit `return`, the last line of code in the method 
is what will be evaluted as the return which is the `loop` method.  The `break` within the loop is the
last line of code which returns `nil`, therefore, the `loop` method returns `nil`.
=end

=begin # 5
What does the following code return? What does it output? Why? What concept does it demonstrate?

def greetings(str)
  puts str
  puts 'Goodbye'
end

word = 'Hello'

greetings(word)

  Line 1045 will output `'Hello'` and `'Goodbye'` on separate lines and return `nil`.
  This example demonstrates scoping rules.  The variable `word` is initialized on line 1043 and points to
the string object `'Hello'`.  The `greetings` method is invoked on line 1045 and passed the string reference by the
variable `word` as an argument.  The string object `'Hello'` that `word` is pointing to 
binds the string referrenced by `word` to the local method variable `str`.  The `puts` method is invoked on line 1039 and
method scoped variable `str` is passed to it which outputs `'Hello'` and returns `nil`.  The puts method is 
invoked on line 1040 and the string object `'Goodbye'` is passed to it as an argument which will output
`'Goodbye'` and return `nil`.  Since there is no explicit `return` within the method, the last line of code, 
line 1040, will be evaluated as the return value, which is `nil`.
=end

=begin # 6
What does the following code return? What does it output? Why? What concept does it demonstrate?

arr = [1, 2, 3, 4]

counter = 0
sum = 0

loop do
  sum += arr[counter]
  counter += 1
  break if counter == arr.size
end

puts 'Your total is #{sum}'

  Line 1072 will output "Your total is 10" and return `nil`.  
  This example demonstrates looping and scoping rules.  Local variable `arr` is intialized on line 1061 and
points to array object `[1, 2, 3, 4]`.  Local variable `counter` is initialized on line 1063 and points to
integer object `0`.  Local variable `sum` is initialized on line 1064 and points to integer object 0.  A
`do..end` block is passed to the `loop` method on line 1066.  Within the loop, we reassign the variable `sum`
to point to the integer object `0` incremented by the integer object at `arr[counter]`.  The array `[]` method
will return the object at the location of the index specified, which will be integer object `1`.  The variable
counter is reassigned to point to object integer `0` incremented by `1`.  The breaking condition is not met so
we go back to the top of the loop and repeat the steps until the breaking condition `counter == arr.size` is met,
breaking us out of the loop.  The breaking condition `counter == arr.size` evaluates if the integer object that
`counter` is pointing to at each iteration will equal the `size` method which will return the integer value of
how many elements are within the array, `4`.  
=end

=begin # 7
What does the following code return? What does it output? Why? What concept does it demonstrate?

a = 'Bob'

5.times do |x|
  a = 'Bill'
end

p a

  Lines 1093 - 1095 will output nothing and return `5`.  Line 1097 will output `'Bill'` and return `Bill`.
  This example demonstrates block scoping rules.  The local variable `a` is intialized on line 1091 and points 
to string object `'Bob'`.  A `do..end` block is passed to the `times` method which is invoked on the 
integer object `5`.  Within the block, the variable `a` is accessible within the block and is reassigned to
point to string object `'Bill'`.  The `times` method returns the calling object, `5`.  The `p` method is
invoked one line 1097 with the variable `a` passed in as an argument.  The `p` method outputs the object and
returns the object.
=end

=begin # 8
What does the following code return? What does it output? Why? What concept does it demonstrate?

animal = 'dog'

loop do |_|
  animal = 'cat'
  var = 'ball'
  break
end

puts animal
puts var

  The `loop` method with the `do..end` block passed to it will output nothing and return `nil`.  Line 1119 will
output `'cat'` and return `nil`.  Line 1120 will cause an error.
  This example demonstrates block variable scoping rules.  The local variable `a` is inialized on line 1111 and
points to string object `'dog'`.  A `do..end` block is passed to the `loop` method on lines 1113 - 1117.  Within
the block, the local variable `animal` is reassigned to point to string object `'cat'`.  A block scoped variable
is initialized on line 1115 and points to string object `'ball'`.  The `break` evalutes to `nil` which loop will 
implicitly return and breaks us out of the loop.  The `puts` method is invoked on line 1119 and passed the 
string object that variable `animal` is pointing to.  The variable `animal` is now pointing to the string object
`'cat'`, so that will be output and `puts` always returns `nil`.  The `puts` method is invoked on line 1120 and
passed the string object that variable `var` is pointing to.  Since the block scoped variable `var` was initialized
within a block, it is inaccessible outside the block.  Blocks scoping rules allow access to variables intialized
outside but does not allow variables intialized within the block to be accessed outside of it.
=end

=begin # 9
What does the following code return? What does it output? Why? What concept does it demonstrate?

a = 4
b = 2

2.times do |a|
  a = 5
  puts a
end

puts a 
puts b

  The local variable `a` is initialized on line `1` and points to integer object `4`.  The local variable `b` is initialized
on line `2` and points to integer object `2`.  A `do..end` block is passed to the `#times` method, on lines 4-7, which is invoked on the
integer `2`.  The `#times` method will invoke the block `2` times and each time we invoke the block, we are passing it to an incrementing value, starting from `0`. 
Each incrementing value will be passed into the block in turn and assign the integer to the block parameter `a`.  Since the parameter variable has the same name 
as the variable initialized on the outer scope, this will shadow the outer scoped variable and will not be accessible inside the block.  The `puts` method is invoked on 
line 6 and the integer object that block scoped variable `a` points to is passed in as an argument, which will output `5` and return `nil`.  
The `puts` method on line 9 is invoked and the integer object that variable `a` is pointing to is passed in as an argument, which
will output `4` and return `nil`.  The `puts` method on line 10 is invoked and the integer variable that variable `b` is pointing
to will be passed in as an argument, which will output `2` and return `nil`.  
  This example demonstrates variable shadowing.  Since the parameter variable has the same name as the local variable in the 
outer scope, the block is not able to access the locally scoped variable.

=begin


we initialized a local variable `array` to the return value of
invoking `map` on the array referenced by `hsh`.  `map` iterates over
each key-value pair in the `hsh`.  on lines 58-66, we pass in a `do..end`
block to `map`.  This outer-level `map` invocation will transform each key-value pair into the
return value of the block on each iteration and return an array containing these elements.

on each iteration, we assign the current value to the local
variable `inner-hash`. if the value associated with `inner-hash[:type]` is
eqial to the string `fruit;, then we'll invoke `map on `inner_hash[:colors]` and pass
in a block.  otherwise, the key-value pair will be transformed into `nil`.


# hsh.values.map do |inner_hash|
#   # type, colors, size = inner_hash.values # parallel assignment
#   details = inner_hash.values
#   type = details.values[0]
#   colors = details.values[1]
#   size = details.values[2]
#   p type
#   p colors
#   p size
# end

=begin

def increment(x)
  x << 'b'
end

y = 'a'
increment(y)

puts y

  Local variable `y` is initialized on line 1191 to string object
with the value 'a'.  `increment` is invoked on line 1192 and
the string referenced by local variable `y` is passed in as an
argument.  This binds the string assigned to local variable `y` 
to the local variable `x` in the `increment` method definition on lines 1-3.
  Within the method, `String#<<` is called on the string referenced by local 
variable `x` and string literal 'b' is passed in as an argument.
This is a mutating method which appends 'b' to the string assigned to local
variable `x`.  Therefore, the `#puts` invocation on line 8 will output 'ab' 
and return `nil`.

=begin # 10
What does the following code return? What does it output? Why? What concept does it demonstrate?

n = 10

1.times do |n|
  n = 11
end

puts n

  The local variable `n` is invoked on line 1 and points to integer object `10`.  On lines 3 - 5, `do..end` block is passed to
the `#times` method which is invoked on the integer 1.  The `#times` method will invoke the block `1` time and will pass it to
the integer `0`.  The integer `0` will be passed into the block and be assigned to the parameter `n`.  Since the parameter and
the variable in the outer scope share the same name, the parameter will shadow the outer scoped variable and it will not be
accessible inside the block.  The `#puts` method is invoked on line 7 and the integer object which variable `n` is pointing to
is passed in as an argument, which will output `10` and return `nil`.
  This example demonstrates variable shadowing.  Since the block parameter and local variable share the same name, the 
block parameter will shadow the outer variable which will not allow the block to access the local variable `n`.
=end

=begin # 11
What does the following code return? What does it output? Why? What concept does it demonstrate?

animal = 'dog'

loop do |animal|
  animal = 'cat'
  break
end

puts animal

  The local variable `animal` is initialized on line 1 and points to string object `'dog'`.  A `do..end` block is passed
to the `#loop` method on lines 3-6.  Within the loop, the block parameter and local variable `animal` share the same name,
the parameter will shadow the outer scoped variable and it will not be accessible inside the block.  The block parameter
is assigned to string object `'cat'` on line 4 and the `break` on line 5 breaks us out of the loop and the block will
return `nil`.  The `#puts` method is invoked on line 8 and the string object that variable `animal` is pointing to will
be passed in as an argument which will output `'dog'` and return `nil`.
  This example demonstrates variable shadowing.  Since the block parameter and local variable share the same name, the
block parameter will shadow the outer variable which will not allow the block to access the local variable `animal`.
=end

=begin # 12
What are `a` and `b`?

a = 'hi there'
b = a
a = 'not here'

  The local variable `a` is pointing to string object `'not here'`.  The local variable `b` is pointing to string object `'hi there'`.
When local variable `a` is initialized on line 1, it is pointing to a specific space in memory and not bound to it.  When local
variable `b` is initialized on line 2, it is pointing to the same space in memory as variable `a`.  On line 3, we are
reassigning the variable `a` to point to a different space in memory, the string object `'not here'`.  Although the 
variable `a` has been reassigned, this does not reassign the space in memory variable `b` is pointing to.
  This example demonstrates variables as pointers.  Variables are not bound to specific object, but are merely pointing
to specific spaces in memory.
=end

=begin # 13
What are `a` and `b`?

a = 'hi there'
b = a
a << " , Bob"

  The local variable `a` is initialized on line 1 and points to string object `'hi there'`.  The local variable `b` is
initialized on line 2 and points to the same string object `'hi there'`.  The mutating `#<<` method is invoked on
variable `a` and appends the string object `' , Bob'` to the string object variable `a` is pointing to.  Since `#<<`
is a mutating method, the calling object had been modified, which variable `b` is also pointing to.
  This example demonstrates variables as pointers.  Both variables `a` and `b` are pointing to the same space in memory
one line 2.  Since the `#<<` method is a destructive method, it will mutate the object that both variables are 
pointing to.
=end

=begin # 14
What are `a`, `b`, and `c`? What if the last line was `c = a.uniq!`?

a = [1, 2, 3, 3]
b = a
c = a.uniq

  The local variable `a` is initialized on line 1 and points to array object `[1, 2, 3, 3]`.  The local variable `b`
is initialized on line 2 and points to the same array object as variable `a`, `[1, 2, 3, 3]`.  The local variable `c`
is initialized on line 3 and points to the return value of the variable `a` with the `#uniq` method invoked on it.
The `#uniq` method is invoked on the array object variable `a` is pointing to and will return a new array containing
the elements from the calling object which are not duplicates, `[1, 2, 3]`.  Local variable `a` is pointing to the
array object `[1, 2, 3, 3]`.  Local variable `b` is pointing to array object `[1, 2, 3, 3]`.  Local variable `c`
is pointing to array object `[1, 2, 3]`.
  This example demonstrates variables as pointers.  The non destructive `#uniq` method will return a new array which will
be what variable `c` points to.  If the last line was `c = a.uniq!`, all three variables, `a`, `b`, and `c` will all
be pointing to the same mutated array object `[1, 2, 3]`.  `#uniq!` is a destructive method which will mutate the
calling object.
=end

=begin # 15
What is `a`? What if we called `map!` instead of `map`?

def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)

  The local variable `a` is initialized on line 5 and points to array object `['a', 'b', 'c']`.  The `test` method is
invoked on line 6 and the array object which variable `a` is pointing to is passed in as the argument.  The method 
definition for `test` are on lines 1-3.  The array object which variable `a` is pointing to is assigned to the method
parameter `b`.  Within the method, a `do..end` block is passed to the `#map` method which is invoked on the method scoped variable `b`.
Each element within the array variable `b` is pointing to will be passed into the block in turn and be assigned to the
block parameter `letter`.  The `#{letter}` within the string will be evaluated and will return the object the variable
`letter` is pointing to and embed it into the string.  The `#map` method takes the return value of the block to perform
transformation on the calling collection and returns a new array with the transformed objects.  
  Line 6 will output nothing and return `['I like the letter: a', 'I like the letter: b', 'I like the letter: c'].
  This example demonstrates pass by value.  A reference to the array object is passed into the method and because the
code within the method is non-desctructive, it is pass by value.  If the destructive `#map!` was used instead, the local 
variable `a` would be mutated to the return value of the method.
=end

=begin # 16
What does the following code return? What does it output? Why? What concept does it demonstrate?

a = 5.2
b = 7.3

a = b

b += 1.1

  The local variable `a` is initialized on line 1 and points to integer object `5.2`.  The local variable `b`
is initialized on line 2 and points to integer object `7.3`.  On line 4, the variable `a` is reassigned to point to the
same integer object that variable `b` is pointing to, `7.3`.  On line 6, the variable `b` is reassigned to point
to the resulting value of the integer value `b` is pointing to incremented by `1.1`, which results to `8.4`. 
  This example demonstrates variables as pointers.  When we reassign variable `a` to point to the same integer
object as variable `b`, both variables are pointing to the same space in memory.  When variable `b` is reassigned,
only variable `b` is reassigned and variable `a` is still pointing to integer object `7.3`.
=end

=begin # 17
What does the following code return? What does it output? Why? What concept does it demonstrate?

def test(str)
  str += '!'
  str.downcase!
end

test_str = 'Written Assessment'
test(test_str)

puts test_str

  The local variable `test_str` is initialized on line 6 and points to string object `'Written Assessment'`.
The `test` method is invoked on line 7 and the string object `test_str` is pointing to is passed in as an
argument.  The method definition for `test` are on lines 1-4.  The string object that variable `test_str` is
pointing to gets assigned to the method parameter `str`.  The method parameter `str` then gets reassigned to
point to the result of `'Written Assessment' + '!'`, which will result in `'Written Assessment!'`.  The 
mutating method `#downcase!` is invoked on `str` which will destructively downcase all the characters in `str`,
resulting in `'written assessment!'` which the method will implicitly return.  The `#puts` method is invoked on
line 9 and the string object `str` is pointing to will be passed in as an argument, which will output 
`'Written Assessment'` and return `nil`.
  This example demonstrates variables as pointers.  We are reassigning the method scope variable `str`
to the return value of the `#+` method being invoked on the variable `str` with the string `'!'` passed to it 
as an argument, which will return `'Written Assessment!'`. The method scope variable will then have the 
destructive `#downcase!` method invoked on it.
=end

=begin # 18
What does the following code return? What does it output? Why? What concept does it demonstrate?

def plus(x, y)
  x = x + y
end

a = 3
b = plus(a, 2)

puts a
puts b

  The local variable `a` is initialized on line 5 and points to integer object `3`.  The local variable `b`
is initialized on line 2 and points to the return value of invoking the `plus` method and passing in the
integer object `a` is pointing to as the first parameter, and the integer `2` as the second parameter.  The
method definition for `plus` are on lines 1 - 3.  The integer object that variable `a` is pointing to gets
assigned to the first parameter `x`, and the integer `2` gets assigned to the second parameter `y`.  Within
the method, the method parameter `x` gets reassigned to the result of `+` being invoked on the first parameter
with the second parameter passed in as an argument which will add the two numbers resulting, `5`.  The `puts`
method is invoked on line 8 and the integer object variable `a` is pointing to is passed in, which will output
`3` and return `nil`.  The `puts` method is invoked on line 9 and the integer object variable `b` is pointing 
to is passed in, which will output `5` and return `nil`.
  This example is demonstrates pass by value.  A reference to the integer object variable `a` points to is 
passed in to the method which is then reassigned to the return value of the `+` method being invoked.
=end

=begin # 19
What does the following code return? What does it output? Why? What concept does it demonstrate?

def increment(x)
  x << 'b'
end

y = 'a'
increment(y)

puts y

  The local variable `y` is initialized on line 5 and points to string object `'a'`.  The increment method is
invoked on line 6 and the string object which variable `y` points to is passed in as an argumen.  The method
definition for `increment` are on lines 1-3.  The string object which variable `y` is pointing to gets assigned
to the method parameter `x`.  The destructive method `#<<` is invoked on the method parameter `x` which will
append `'b'` to the string object which variable `x` is pointing to, implicitly returning `'ab'`.  The `puts`
method is invoked on line 8 and the string object which variable `y` is pointing to is passed in as an
argument which will output `'ab'` and return `nil`.
  This example demonstrates pass by reference.  A reference to the string object variable `y` is pointing to is
passed in to the method.  Since the method performs a destructive action, the calling object was altered.
=end

=begin # 20
What does the followng code return? What does it output? Why? What concept does it demonstrate?

def change_name(name)
  name = 'bob'
end

name = 'jim'
change_name(name)
puts name

  The local variable `name` is initialized on line 5 and points to string object `'jim'`.  On line 6, we invoke
the `change_name` method and pass in the string object variable `name` is pointing to as the argument.  The method
definition for `change_name` are on lines 1-3.  The string object gets assigned to method parameter, `name`.  
On line 2, the method local variable gets reassigned to point to the string object `'bob'` and is implicitly returned.
The `puts` method is invoked on line 7 and the string object local variable `name` is pointing to is passed in as 
an argument which will output `'jim'` and return `nil`.
  This example demonstrates that reassignment within a method can act like pass by value.
=end

=begin # 21
What does the followng code return? What does it output? Why? What concept does it demonstrate?

def cap(str)
  str.capitalize!
end

name = 'jim'
cap(name)
puts name

  The local variable `name` is initialized on line 5 and points to string object `'jim'`.  The `cap` method is
invoked on line 6 and the string object which the variable `name` points to. `'jim'` is passed in as an argument.
The method definition for `cap` are on lines 1-3.  The string object `'jim'` gets assigned to the method
parameter `str` and the destructive `capitalize!` method is invoked on the method local variable which the method
will implicitly return, `'Jim'`.  The `puts` method in invoked on line 7 and the string object variable `name`
is pointing to is passed in as an argument which will output `'Jim'` and return `nil`.
  This example demonstrates that using a destrucive method within a method can act like pass by value.
=end

=begin # 22
What does the followng code return? What does it output? Why? What concept does it demonstrate?

a = [1, 3]
b = [2]
arr = [a, b]
arr

a[1] = 5
arr
  
  The local variable `a` is initialized on line 1 and points to an array object of integers `[1, 3']`.  The
local variable `b` is initialized on line 2 and points to the array object with a single integer, `[2]`. The
local variable `arr` is initialized on line 3 and points to an array object of array objects with integers, 
`[[1, 3], [2]]`.  The destructive setter method `#[]=` is initialized on line 6 on the array object local variable `a` is
pointing to which will change the integer at index `[1]` from `3` to `5`, returning `[1, 5]`.  The `arr` variable
will now be pointing to an array object with the mutated array object variable `a` is pointing to and the array
object variable `b` is pointing to, `[[1, 5], [2]]`.
  This example demonstrates variables as pointers.  The destructive method `#[]=` will have the object within
variable `a` at index `[1]` point to a a different object.
=end

=begin # 23
What does the followng code return? What does it output? Why? What concept does it demonstrate?

arr1 = ['a', 'b', 'c']
arr2 = arr1.dup
arr2.map! do |char|
  char.upcase
end

puts arr1
puts arr2

  The local variable `arr1` is initialized on line 1 and points to an array object with three string objects,
`['a', 'b', 'c']`.  The local variable `arr2` is initialized on line 2 and points to the return value of the
`dup` method being called on variable `arr1` which will make a copy of the array object variable `arr1` is 
pointing to.  The destructive `#map!` method is called on variable `arr2` with a `do..end` block passed to it.
Each element in the array object variable `arr2` is pointing to will be passed into the block in turn and 
assigned to the block parameter `char`.  The `#upcase` method is called on string object the variable `char` is
pointing to which will impliclty return, `['A', 'B', 'C']`.  The `puts` method is invoked on line 7 and the array
object variable `arr1` is pointing to is passed in as an argument which will output `['a', 'b', 'c']` and return
`nil`.  The `puts` method is invoked on line 7 and the array object variable `arr2` is pointing to will be passed
in as an argument which will output `['A', 'B', 'C']` and return `nil`.
  This example demonstrates how the destructive `#map!` method works. 
=end
  
=begin # 24
What does the followng code return? What does it output? Why? What concept does it demonstrate?

def fix(value)
  value.upcase!
  value.concat('!')
  value
end

s = 'hello'
t = fix(s)

  The local variable `s` is initialized on line 7 and points to string object `'hello'`.  The local variable
`t` is initialized on line 8 and points to the return value of the fix method being invoked with the string
object variable `s` is pointing to passed in as an argument.  The method definition for `fix` are on lines 1-5.
The string object variable `s` is pointing to gets assigned to method parameter `value`.  On line 2, the 
destructive `#upcase!` method is invoked on local variable `value` returning `'HELLO'`.  The destructive method
`#concat` method is invoked on the mutated local variable `value` with the string object `'!'` passed in as an
argument returningn `'HELLO!'` which will then be implicitly returned.  Both variable `s` and `t` are both
pointing to the string object `'HELLO!'`.
  This example demonstrates how if there is a destructive method with a method definition, it acts like
pass by reference since the calling object will be mutated.
=end

=begin # 25
What does the followng code return? What does it output? Why? What concept does it demonstrate?

def fix(value)
  value = value.upcase
  value.concat('!')
end

s = 'hello'
t = fix(s)

  The local variable `s` is initialized on line 6 and points to string object `'hello'`.  The local variable `t`
is initialized on line 7 and points to the return value of the `fix` method being invoked with the string object
variable `s` is pointing to passed in as an argument.  The method definition for `fix` are on lines 1-4.  The 
string object variable `s` is pointing to gets assigned to the method parameter `value`.  Within the method, the
local method variable `value` gets reassigned to the return value of the `#upcase!` method being called on the
string object variable `value` is pointing to which will return `'HELLO'`.  The destructive `#concat` method is
invoked on the method local variable with the string object `'!'` passed in as an argument which will method will
implicitly return `'HELLO!'`.  The local variable `t` is pointing to the string object `'HELLO!'` and local variable
`s` is still pointing to the string object `'hello'`.
  This example demonstrates variables as pointers and how reassignment within a method can cause Ruby to behave 
as pass by value.
=end

=begin # 26
What does the followng code return? What does it output? Why? What concept does it demonstrate?

def fix(value)
  value << 'xyz'
  value = value.upcase
  value.concat('!')
end

s =

=end

=begin
What will the following code print? why?

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2 
      return
    end
  end
end

p count_sheep

  The `#p` method is invoked on line 10 with the return value of the `count_sheep` method passed in as an 
argument which will output `0` `1` `2` and return `nil`.  The method definition for `count_sheep` are on lines
1-8.  Within the method, the `#times` method is invoked on the integer object `5` with a `do..end` block 
passed to it as an argument.  The `#times` method will invoke the block 5 times and each time the block is
invoked, an incrementing value is passed to the block, starting from 0, and being assigned to the block parameter
`sheep`.  The `#puts` method is invoked on line 3 and the integer object block local variable `sheep` is pointing
to will be passed in as an argument which will output the integer object and return `nil`.  Within the block
there is an `if` statement where the condition that needs to be met is `sheep >= 2`, meaning if the current 
integer object of `sheep` is 2 or greater, we will invoke the return which will return `nil` and break out of 
the loop and method.  
  This example demonstrates 

=end

=begin
what does the following code return?  what does it output? why? what concept does it demonstrate?

a = 4
b = 2

2.times do |a|
  a = 5
  puts a
end

puts a 
puts b

  The local variable `a` is initialized on line 1 and points to integer object `4`.  The local variable `b` is 
initialized on line 2 and points to integer object `2`.  On line 4, the `#times` method is called on the integer
object `2` with a `do..end` block passed to it as an argument.  The `#times` method will invoke the block twice
and each time the block is invoked, an incrementing value will be passed in and be assigned to the block
parameter `a`, starting from the integer `0`.  The block local variable `a` is reassigned to point to integer
object `5`.  The `#puts` method is called on line 6 with the integer object block local variable `a` is pointing
to passed in as an argument which will output `5` and return `nil`.  The `#puts` method is called on line 9 and
the integer object local variable `a` is pointing to is passed in as an argument which will output `4` and return 
`nil`.  The `#puts` method is called on line 10 and the integer object local variable `b` is pointing to is passed
in as an argument which will output `2` and return `nil.  
  This example demonstrates variable shadowing.  Since the block parameter and the local variable intialized in
the outer scope share the same name, the outer scoped local variable is not accessible within the block so the 
block variable `a` is reassigned to integer object `5`.
=end

=begin
how does count treat the block's return value?  how can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

  The `#count` method considers the truthiness of the block's return value.  It counts the number of elements
for which the block evalutes as true.  Within the `#count` method, the `#length` method is called on the string
object `str` is pointing to for each iteration and the return value will have the `#<` method called on it with 
the integer object `4` passed in as an argument.  the `#<` method will return true if the integer on the right 
is greater than the integer on the left and false if vice versa.  We can find out how `#count` treats the return
value by changing line 2 to `puts str.length < 4` which will output the return value for each iteration.
=end

=begin
Our predict_weather method should output a message indicating whether a sunny or cloudy day lies ahead. However, 
the output is the same every time the method is invoked. Why? Fix the code so that it behaves as expected.

def predict_weather
  sunshine = ['true', 'false'].sample
  
  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

  The output is the same every time we invoke the method `predict_weather` due to line 2.  The method local 
variable is initialized and points to the `#sample` method being called on an array of string objects.  In Ruby,
everything other than the boolean `false` and `nil` are considered truthy so the strings `'true'` and `'false'` 
will always evaluate as true so the string `"Today's weather will be sunny!"` will always be output.  To fix the
code so that it behaves as expected, we would just need to change the string objects `'true'` and `'false'` to
the booleans `true` and `false`.
=end

=begin
what is the return value of map in the following code? why?

{a: 'ant', b: 'bear'}.map do |key, value|
  if value.size > 3
    value
  end
end

  The return value of this code will be `[nil, `bear']`.  The `#map` method takes the return value of the block
passed to it to perform transformation.  Each key-value pair within the calling hash is passed into the block
and is assigned to the block parameters `key` and `value`, respectively.  Within the block, an `if` statement
is called with the condition `value.size > 3`.  The `#size` method will return the character length of the 
string local block variable `value` is pointing to.  The `#>` method will return the boolean `true` if the 
integer on the left is greater than the integer on the right and `false` if vice versa.  If the condition is met,
the string object `value` is pointing to will be returned by the block.  Since on the first iteration, the 
string object `'ant'` will return `nil` because the condition is not met.
=end

=begin
what will the following code print? why?

def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number

  The code will print `1`.  Within the method definition of `tricky_number`, there is an if-else statement with
the conditional being the boolean `true` which will evaluate as true since everything in Ruby is considered
truthy except the boolean `false` and `nil`.  Since the if condition will evaluate is true, the integer object 
`1` will be output.
=end

=begin
The following code throws an error. Find out what is wrong and think about how you would fix it.

colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0

loop do
  break if i > colors.length
  
  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end
  
  i += 1
end

  The following code will cause a type error.  The error is due to the breaking condition `if i > colors.length`.
The length of the `colors` array object is `8` and the length of the `things` array is `7`.  Since the array
length of the `colors` array is greater, when the `#+` method is invoked on the 8th iteration, there is no
string object that is referenced by `things[8]`, `nil` will be passed in as an argument which will cause an
error because the `#+` method cannot concatenate two objects that are not of the same type.
  We can fix this error by either adding another string object to the `things` array or by changing the breaking
condition to `break if i >= things.length`.
=end

=begin
what does the following code return? what does it output? why? what concept does it demonstrate?

arr = [1, 2, 3, 4]

counter = 0
sum = 0

loop do
  sum += arr[counter]
  counter += 1
  break if counter == arr.size
end

puts "Your total is #{sum}"

  The local variable `arr` is initialized on line 1 and points to an array object of integers.  The local variable
`counter` is initialized on line 3 and points to integer object `0`.  The local variable `sum` is initialized
on line 4 and points to integer object `0`.  The `#loop` method is called on line 6 with a `do..end` block 
passed to it as an argument.  Within the block, we reassign the variable `sum` to point to the return value
of the current integer object `sum` is pointing to incremented by the return value of the `#[]` method being
called on the array object `arr` is pointing to which will return the integer object at the indexed location 
within the array.  The integer object `counter` is pointing to is incremeneted by 1.  If the breaking condition 
`counter == arr.size`, where the integer object `counter` is pointing to equals the array size, is met, we will
break out of the loop.  The `#puts` method is invoked on line 12 with a string object passed in as an argument
which will output `"Your total is 10"` using string interpolation and return `nil`.
  This example demonstrates scoping rules for blocks.  Variables initalized in an outer scope are accessible
within a block, but not vice versa.  The local variable `counter`, `sum`, and `arr` are all accessible within
the block which allows for the reassignment within the block to affect the variables in the outer scope.
=

=begin
what is `a`? what if we called `map!` instead of `map`?

def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)

  The local variable `a` points to the array object `['a', 'b', 'c'].  If we called `#map!` instead of `#map`,
`a` would point to the array object `["I like the letter: a", "I like the letter: b", "I like the letter: c"] `.
This is because the `#map!` method is a destructive method which will mutate the calling object.
=end

=begin
what does the following code return? what does it output? why? what concept does this demonstrate?

def plus(x, y)
  x = x + y
end

a = 3
b = plus(a, 2)

puts a
puts b

  Line 8 will output `3` and return `nil` and line 9 will output `5` and return `nil`.  The local variable `a`
is initialized on line 5 and points to integer object `3`.  The local variable `b` is initialized on line 5 and
points to the return value of the `plus` method being called with the integer object local variable `a` is 
pointing to and integer object `2` being passed in as the arguments.  The method definition for `plus` are on 
lines 1-3.  The integer object local variable `a` is pointing to , `3` and integer object `2` are assigned to
the method parameters `x` and `y`, respectively.  The method local variable `x` is reassigned to the return value
of the integer object `x` is pointing to with the `#+` method called on it and the integer object method local
variable `y` is pointing to passed in as an argument which will return `5`.  
  This example demonstrates pass by value.  In Ruby, integers are not mutable so when the integer object variabe
`a` is pointing to was passed in, a copy of the integer object was passed in so the return value of the `#+` method
did not affect the integer object variable `a` is pointing to.
=end

=begin
what values do `s` and `t` have? why?

def fix(value)
  value.upcase!
  value.concat("!")
  value
end

s = 'hello'
t = fix(s)

  The local variable `s` is pointing to the string object `'HELLO!'` and the local variable `t` is pointing to 
the same string object as variable `s`.  This is due to the method being pass by reference.  The local variable
`s` is initialized on line 7 and points to the string object `'hello'`.  The local variable `t` is initialized
on line 8 and points to the return value of the `fix` method with the string object `s` is pointing to passed
in as an argument.  The string object `s` is pointing to will be assigned to the method parameter `value`. The 
`#upcase!` method is a destructive method which will mutate the calling object which is the string object local 
variable `s` is pointing to, `'hello'`, returning `'HELLO'`.  The `#concat` method is also a destructive method
which will append the argument `'!'` to the string object value is now pointing to returning, `'HELLO!'`.  This
mutates string object will be implicitly returned by the method.
=end

=begin
what is the return value of each_with_object in the following code? why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

  This code will return `{'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}`.  The `#each_with_object` method will pass
in each element in the calling array into the block and be assigned to the first block parameter `value` and the
empty hash which was passed in as an argument to the method will be assigned to the block parameter `hash`.  
Within the block, the key for the empty hash is being assigned as the return value of the `#[0]` method which 
will return the first letter of the string on each iteration and set the value of that key to the string object
local block variable `value` is pointing to on each iteration.  The `#each_with_object` method will return the
newly populated hash.
=end

=begin
We want to iterate through the numbers array and return a new array containing only the even numbers. 
However, our code isn't producing the expected output. Why not? How can we change it to produce the expected result?

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.map do |n|
  n if n.even?
end

p even_numbers # expected output: [2, 6, 8]

  The code is returning `[nil, 2, nil, 6, nil, nil, 8]`.  This is because of how the `#map` method works.  `#map`
takes the return value of the block to perform transformation on the calling object and return it in a new array.
Since the odd numbers do not satisfy the `if` condition within the block, the return value for the odd integers
will be `nil` and map will transform the odd numbers to `nil` and return it.  To produce the expected results,
we can use the `#select` method which will reutrn a new array with the elements where the block's return value
evaluates as true.
=end

=begin
what will the following code print? why?

a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a

  Line 7 will cause an error.  This is because within the method, the local method variable `b` is
reassigned to the return value of `a + a`.  The variable `a` within the method has not been initialized so Ruby
doesn't know what `a` is referring to.  The `#puts` method is called on line 8 with the integer object local 
variale `a` is pointing to passed in as an argument which will output it, `7`, and return `nil`.
=end

=begin 
what does the following code return? what does it output? why? what concept does this demonstrate?

a = 4
b = 2

loop do
  c = 3
  a = c
  break
end

puts a
puts b

  Local variable `a` is initialized on line 1 and points to integer object `4`.  Local variable `b` is initialized
on line 2 and points to integer object `2`.  The `#loop` method is called on line 4 with a `do..end` block passed
to it as an argument.  Within the block, the local block variable is initialized and points to integer object `3`.
The local variable `a` is reassigned to the integer object block variable `c` is pointing to.  The `break` breaks
us out of the loop.  The `#puts` method is called on line 10 with the integer object local variable `a` is 
pointing to passed in as an argument which will output `3` and return `nil`.  The `#puts` method is called on line
11 with the integer object local variable `b` is pointing to passed in as an argument which will output `2`
and return `nil`.  
  This example demonstrates block scoping rules.  Variables intialized in an outer scope are accessible within
the block but not vice versa.  The local variable `a` is accessible within the block so the reassignment on line
6 will be visible outside the block.
=end

=begin
Explain Hash#each_with_object method and what it's doing in this code.

{ a: "ant", b: "bear", c: "cat" }.each_with_object([]) do |pair, array|
  array << pair.last
end

  The `Hash#each_with_object` allows you to pass in an argument which will be returned by the method.  The 
elements in the calling hash will be passed into the block in turn being assigned to the first block parameter
`pair` and the empty array that was passed in as an argument to the method will be passed into the block and
be assigned to the block parameter `array`.  The `#<<` method will append the return value of the `#last` method
being called on the key-value pair local block variable `pair` is pointing to on each iteration which will return
the last element of itself.  
=end

=begin
What will the following code print, and why?

a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a

  The `#puts` method is called on line 8 with the integer object local variable `a` is pointing to passed in
as an argument which will output `7` and return `nil`.  This is because there is no method that is called on
the local variable `a`. 
=end

=begin
Magdalena has just adopted a new pet! She wants to add her new dog, Bowser, to the pets hash. 
After doing so, she realizes that her dogs Sparky and Fido have been mistakenly removed. Help 
Magdalena fix her code so that all three of her dogs' names will be associated with the key :dog in the 
pets hash.

pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog] = 'bowser'

p pets #=> {:cat=>"fluffy", :dog=>"bowser", :fish=>"oscar"}

  Line 3 would need to be changed from `pets[:dog] = 'bowser'` to `pets[:dog] << 'bowser'`.  This is because the
`#[]=` method is reassigning the value of the `:dog` key with `'bowser'` instead of adding it.  the `#<<` method
will append the string object `'bowser'` to the existing value for the `:dog` key.
=end