# B mock written

1.  What will the following code print?  Why?

```ruby
def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep
```

  The following code will print `0`, `1`, `2` on separate lines.  This is because within the `count-sheep` method, the `times` method is called on the integer object `5` with a `do..end` block passed to it as an argument.  The `times` method will invoke the block `5` times and each time we invoke the block, we are passing it to an incrementing value, starting from `0`.  Each incrementing value will be passed into the block in turn and be assigned to the block parameter `sheep`.  

  The `puts` method is called with the integer object local block variable `sheep` is pointing to which will output the integer object.  There is an `if` statement with a condition being `sheep >= 2`.  The `>=` method will compare the two integer object and return the boolean true if the integer object on the left is greater than or equal to the integer object on the right, and false if vice versa.  If the conditional is met, the explicit `return` statement will stop the iteration of the `times` method and the `count_sheep` method.  Once the integer object being passed into the block is greater than or equal to `2`, the method will stop executing.

1.  What does the following code return?  What does it output?  What concept does it demonstrate?

```ruby
a = 4
b = 2

2.times do |a|
  a = 5
  puts a
end

puts a
puts b
```

  The local variable `a` is initialized on line 1 and points to integer object `4`.  The local variable `b` is initialized on line 2 and points to integer object `4`.  The `times` method is called on the integer object `2` with a `do..end` block passed to it as an argument.  The `times` method will invoke the block `2` times and each time we invoke the block, we are passing it to an incrementing value, starting from `0`.  Each incrementing value will be passed into the block in turn and be assigned to the block parameter `a`.  

  The local block variable `a` will be assigned to the integer object `5` and the outer scoped variable `a` will not be reassigned due to variable shadowing.  Since the block parameter and the outer scoped variable share the same name, the outer scoped variable is shadowed and not accessible within the block. 

  The `puts` method is called on line 9 with the integer object `a` is pointing to passed in as an argument which will output it, `4` and return `nil`.  The `puts` method is called on line 10 with the integer object `b` is pointing to passed in as an argument which will output it, `2` and return `nil`.  

1.  How does count treat the block's return value? How can we find out? **

```ruby
['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end
```

  The `count` method for arrays counts the number of elements for which the block returns a truthy value.  We can find out by initializing a variable to point to the return value of this code then call the `puts` method and pass in the object the variable is pointing to as an argument.

1.  Our predict_weather method should output a message indicating whether a sunny or cloudy day lies ahead. However, the output is the same every time the method is invoked. Why? Fix the code so that it behaves as expected.

```ruby
def predict_weather
  sunshine = ['true', 'false'].sample
  
  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end
```

  The `predict_weather` will always output `"Today's weather will be sunny!"` due to line 2 `sunshine = ['true', 'false'].sample`.  The local method variable is pointing to the return value of the `sample` method being called on an array of strings.  

  Everything in Ruby is considered to be truthy except for the boolean false and nil.  Since The strings `'true'` and `'false'` will always evaluate as true, the condition in the `if` statement will always evaluate as true and the else condition will never be reached.

  To fix this code, we just need to change the strings `'true'` and `'false'` into the booleans `true` and `false` , `sunshine = [true, false].sample`.

1.  What is the return value of map in the following code? Why? **

```ruby
{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end
```

  The return value of `map` will be `[nil, 'bear']` .  This is because the `map` method uses the return value of the block to perform transformation on the calling object and return a new array with the transformed elements.  

  The `if` statement within the `do..end` block has the condition `value.size > 3` .   The `size` method will return the number of characters in the string local block variable `value` is pointing to.  The `>` method will return a the boolean `true` if the integer on the left is greater than the integer on the right, and false if vice versa.

  If the `if` statements condition is met, the string that `value` is pointing to will be returned, if the condition is not met, `nil` will be returned.

1.  What will the following code print? Why?

```ruby
def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number
```

  The following code will print `1` and return `nil`.  

  This is because we call the `puts` method with the return value of the `tricky_number` method passed in as an argument which will output the return value of the method and return `nil`.

  Within the method, the `if` statement has the condition `true` which will evaluate as true since everything in Ruby is considered to be truthy except for the boolean `false` and `nil`.  Since the `if` condition evaluates as true, the integer object local method variable `number` is pointing to will be implicitly returned.

1.  The following code throws an error. Find out what is wrong and think about how you would fix it.

```ruby
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
```

  This code will throw a TypeError because `nil` cannot be concatenated with a string using the `+` method.  

  One way to fix this code so it does not throw an error is to change line 9,  `break if i > colors.length` to `break if i >= things.length`.   This will allow the code to not cause an error due to the fact that the two arrays are of different lengths.  The `colors` variable points to an array of 8 elements and the `things` variable points to an array of 7 elements.  

  The `loop` will continue until the breaking condition is met and on the last iteration, the `[]` method for `things[i]` will return `nil` since there is no 8th element in the array.

1.  What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
arr = [1, 2, 3, 4]

counter = 0
sum = 0

loop do
  sum += arr[counter]
  counter += 1
  break if counter == arr.size
end 

puts "Your total is #{sum}"
```

  The local variable `arr` is initialized on line 1 and points to an array object of integers, `[1, 2, 3, 4]`.  The local variable `counter` is initialized on line 3 and points to integer object `0`.  The local variable `sum` is initialized on line 4 and points to integer object `0`.  

  The `loop` method is called with a `do..end` block passed to it as an argument.  Due to scoping rules of blocks, the local variable `sum` and `counter` are both accessible within the block.  The local variable `sum` is reassigned to the return value of the integer object `sum` is pointing to incremented by the integer object that is referenced at the index in the array `arr` the the integer object `counter` is pointing to.  On line 8 `counter` is reassigned to the integer object that it is pointing to by `1`.  

  The `break` breaks us out of the loop if the `if` condition is met.  The `size` method is called on the array object `arr` is pointing to and will return the number of elements in the array, 4.  If the integer object `counter` is pointing to is equal to 4, the `break` will break us out of the loop.

  The `puts` method is called on line 12 with a string object passed to it which will output `"Your total is 10"` using string interpolation and return `nil`.  

  This example demonstrates scoping rules.  Blocks have access to variables initialized in an outer scope but not vice versa.  This allows the reassignment of the variables `sum` and `counter`.

1.  What is `a`? What if we called `map!` instead of `map`?

```ruby
def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)
```

  `a` is pointing to the array object `[’a’, ‘b’, ‘c’]`.  If we were to call the destructive `map!` method instead, `a` would be pointing to `["I like the letter: a", "I like the letter: b", "I like the letter: c"]`.  

This is because the `map` method returns a new array with transformed elements based on the return value of the block.  The destructive `map!` method will mutate the calling object.

1.  What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def plus(x, y)
  x = x + y
end

a = 3
b = plus(a, 2)

puts a
puts b
```

  The local variable `a` is initialized on line 5 and points to integer object `3`.  The local variable `b` is initialized on line 6 and points to the return value of the `plus` method being called with the integer object `a` is pointing to, `3`, passed in as the first argument and the integer object `2` being passed in as the second argument.

  The method definition for `plus` are on lines 1-3.  Both arguments are assigned to the method parameters `x` and `y` , respectively and passed into the method.  The integer object `x` is pointing to is reassigned to the `+` method being called on the integer object local method variable `x` is pointing to and the integer object local method variable `y` is pointing to passed in as an argument which will add the two values and implicitly return it.

  The `puts` method is called on line 8 and the integer object `a` is pointing to is passed in as an argument which will output `3` and return `nil`.  The puts method is called on line 9 and the integer object `b` is pointing to is passed in as an argument which will output `5` and return `nil`.

  This example demonstrates how method can act as pass by value.  Since integers are immutable in Ruby, a copy of the integer object `a` is pointing to is passed into the method and is unchanged in the outer scope.

1.  What values do `s` and `t` have? Why?

```ruby
def fix(value)
  value.upcase!
  value.concat('!')
  value
end

s = 'hello'
t = fix(s)
```

  The local variable `s` is pointing to the string object `'HELLO!'` and the local variable `t` is pointing to the string object `'HELLO!'` .  

  This is because the `upcase!` and the `concat` methods are both destructive methods, meaning they will mutate the calling object.

1.  What is the return value of each_with_object in the following code? Why?

```ruby
['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
```

  The return value of this code will be `{"a"=>"ant", "b"=>"bear", "c"=>"cat"}`.  This is because of how the `each_with_object` method works.  

  The `each_with_object` method takes an empty collection as one argument and a block as a second argument returning the collection which was passed in as an argument.  Each element in the calling object is passed into the block being assigned to the first block parameter and the object which is passed in as the argument to the method will be passed into the block being assigned to the second block parameter.  The method will return the newly populated object which was passed in as the argument to the method.

  The `[]=` method will set the key in the empty hash as the letter at the index position of `0` in the string `value` is pointing to on each iteration and set the value as the string object `value` is pointing to.

1.  What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |n| 
  n + 1
  puts n
end
p new_array
```

  The local variable `arr` is initialized on line 1 and points to an array object of integers, `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`.  The local variable `new_array` is initialized on line 3 and points the to return value of the `select` method being called on the array object `arr` is pointing to with a `do..end` block passed to it as an argument.

  Each element in the calling array will be passed into the block once in turn and be assigned to the block parameter `n`.  The `+` method is called on the integer object `n` is pointing to with integer object `1` passed in as an argument which will increment integer object `n` is pointing to by `1`.  The `puts` method is called on line 5 with the integer object `n` is pointing to and will output it for each iteration and return `nil`.  

  The `select` method performs selection based on the truthiness of the block’s return value.  Since there is no explicit return within the block, the last line of code `puts n` is evaluated as the the block’s return value.  Since `puts` always returns `nil`, the block will always evaluate as false and none of the elements will be selected and an empty array will be returned which `new_array` will be pointing to.

  The `p` method is called on line 7 with the array object `new_array` is pointing to passed in as an argument which will both output and return the calling object, `[]`.

  This example demonstrates how the `select` method works.  The `#select` method cares about the truthiness of the return value of the block that is passed to it.  If the return value of the block evalutes to `true`, the element will be selected and passed into a new array which will be returned.  Since the return value for the block in the case will always return `nil` which is evaluates to `false`, non of the elements will be selected and an empty array will be returned.

1.  Explain the Hash#any? method and what it's doing in this code.

```ruby
{ a: "ant", b: "bear", c: "cat" }.any? do |key, value|
  value.size > 4
end
```

  The `any` method will evaluate the block’s return value on each iteration and if the return value for one iteration evaluates as true, the method will return `true`.

  A `do..end` block passed in as an argument to the `any` method.  The `size` method is called on the string object `value` is pointing to which will return the character length of the string.  The `<` method is called on that return value with the integer object `4` passed in as an argument which will return the boolean true if the integer object on the left is greater than the integer object on the right and false if vice versa.

  Since the block will evaluate to false for each iteration, the code will return `false`.

1.  We want to iterate through the numbers array and return a new array containing only the even numbers.  However, our code isn't producing the expected output. Why not? How can we change it to produce the expected result?

```ruby
numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.map do |n|
  n if n.even?
end

p even_numbers # expected output: [2, 6, 8]
```

  The current code is outputting `[nil, 2, nil, 6, nil, nil, 8]`.  This is due to the fact that we are using the `map` method.  The `map` method uses the block’s return value to perform transformation and not selection.

  If we change line 3 to `even_numbers = numbers.select do |n|`, the code will output `[2, 6, 8]`.  

  This is because of how the `select` method works.  The `#select` method cares about the truthiness of the return value of the block that is passed to it.  If the return value of the block evalutes to `true`, the element will be selected and passed into a new array which will be returned.  

1.  What will the following code print, and why?

```ruby
a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a
```

  This code will cause a NameError.  This is because within the method, the local method variable `a` is never initialized, so when local method variable `b` tries to get reassigned to the return value of `a + a`, Ruby doesn’t know what the variable `a` is pointing to since it has never been initialized within the method.  The local variable `a` which was initialized in the outer scope is passed into the method as an argument and assigned to the method parameter `b`.

1.  The output of the code below tells you that you have around $70. However, you expected your bank account to have about $238. What did we do wrong?

```ruby
# Financially, you started the year with a clean slate.

balance = 0

# Here's what you earned and spent during the first three months.

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

# Let's see how much you've got now...

def calculate_balance(month)
  plus  = month[:income].sum
  minus = month[:expenses].sum
  
  plus - minus
end

balance = [january, february, march].map do |month|
  calculate_balance(month)
end

puts balance.sum
```

  Lines 31-35 were causing the miscalculation.  The `each` method is called on the array object and each element in the array is passed into the `do..end` block once in turn and assigned to the block parameter `month`.  The variable `balance` which was initialized in the outer scope is accessible within the block and is reassigned to the last iteration of the method reassigning the variable `balance` to the return value of `calculate_method(march)`.  

  To fix this code so the correct amount is shown, we would need to change lines 31-35 to:

```ruby
balance = [january, february, march].map do |month|
  calculate_balance(month)
end

puts balance.sum
```

  We would need to reassign the variable balance to the return value of the `map` method being called on the array object.  `map` will use the return value of the block to perform transformation on the elements in calling object and return a new array with the transformed elements returning `[246.9000000000001, -79.20000000000005, 70.59999999999991]`.  We would then need to call the `sum` method on this array to which will return the sum of the integers.

1.  What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = 4
b = 2

loop do
  c = 3
  a = c
  break
end

puts a
puts b
```

  The local variable `a` is initialized on line 1 and points to integer object `4`.  The local variable `b` is initialized on line 2 and point to integer object `2`.  The `loop` method is called on line 4 with a `do..end` block passed to it as an argument.

  Within the block, the local block variable `c` is initialized and points to integer object `3`.  The local variable `a` from the outer scope is accessible within the block and is reassigned to point to the integer object `c` is pointing to, `3`.  The `break` breaks us out of the loop.  

  The `puts` method is called on line 10 and the integer object `a` is pointing to passed in as an argument which will output it, `3` and return `nil`.  The puts method is called on line 11 and the integer object `b` is pointing to is passed in as an argument which will output it, `2` and return `nil`.

  This example demonstrates scoping rules and variables as pointers.  Blocks have access to variables initialized in the outer scope but variables initialized within the block are not accessible outside the block.  Since the variable `a` from the outer scope was accessible within the block, the reassignment was reflected on the variable `a` in the outer scope.

1.  We started writing an RPG game, but we have already run into an error message. Find the problem and fix it.

```ruby
# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

player.merge!(character_classes[input.to_sym])

puts 'Your character stats:'
puts player
```

  Line 17, `player.merge(character_classes[input])` is causing a TypeError.  This can be fixed by changing the code to `player.merge!(character_classes[input.to_sym])`.   

  We need to use the destructive `merge!` method to mutate the calling object.  The `input` also needs to be converted to a symbol because the `gets` will always return a string.  We are trying to access the value of the key in the `character_classes` hash and the keys in the hash are symbols.

1.  Explain Hash#each_with_object method and what it's doing in this code.

```ruby
{ a: "ant", b: "bear", c: "cat" }.each_with_object([]) do |pair, array|
  array << pair.last
end
```

  The `each_with_object` method takes an empty collection as one argument and a block as a second argument returning the collection which was passed in as an argument.  Each element in the calling object is passed into the block being assigned to the first block parameter and the object which is passed in as the argument to the method will be passed into the block being assigned to the second block parameter.  The method will return the newly populated object which was passed in as the argument to the method.

  In this code, the `each_with_object` is called on the hash `{ a: "ant", b: "bear", c: "cat" }` with an empty array passed in as an argument and a `do..end` block passed in as an argument.  Each key-value pair in the calling object is passed into the block once in turn and assigned to the block parameter `pair` and the empty hash is assigned to the block parameter `array`.  

  The destructive `<<` method will mutate the empty array `array` is pointing to by appending the return value of the `last` method called on the key-value pair `pair` is pointing to which will return the last element of itself.

1.  What will the following code print, and why?

```ruby
a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a
```

  The code will print `7` and return `nil`.  

  This is because the local variable `a` which is initialized on line 1 and points to integer object `7` is never reassigned.

  The `each` method that is called on the array object `array` is pointing to does not care about the return value and will return the calling object.

1.  Magdalena has just adopted a new pet! She wants to add her new dog, Bowser, to the pets hash.  After doing so, she realizes that her dogs Sparky and Fido have been mistakenly removed. Help Magdalena fix her code so that all three of her dogs' names will be associated with the key :dog in the pets hash.

```ruby
pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog] = 'bowser'

p pets #=> {:cat=>"fluffy", :dog=>"bowser", :fish=>"oscar"}
```

    To fix this code, we will need to change line 3 to `pets[:dog] += ['bowser']`.  The `[]=` method is a mutating method which will set the value of the key `:dog` to string which was passed in as an argument, `'bowser'`.  The `+=` is a non mutating method which will reassign the key `:dog` to the return value of the current value with the string value that was passed in as an argument.  The string object passed in as the argument would need to be in brackets `['bowser']` since the initial value of the key `:dog` is an array can only be concatenated with an array using the `+` method.