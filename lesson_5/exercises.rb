

# working with blocks exercises
# 1

[[1, 2], [3, 4]].each do |arr|
  puts arr.first
end

# 1
# 3
# => [[1, 2], [3, 4]]

=begin
the each method is begin called on the nested array
the inner arrays are being passed into the block in turn and being assigned to the variable arr
the first method is being called on the inner arrays in turn and is returning the values 1 and 3
the puts method outputs a string representation of 1 and 3 and returns nil
the block returns nil but the each method does not do anything with the return value and returns the calling object
=end

# 2

[[1, 2], [3, 4]].map do |arr|
  puts arr.first
end
# 1
# 3
# => [nil, nil]

=begin
the map method is being called on the nested array
the inner arrays are being passed into the block in turn and being assigned to the variable arr
the first method is being called on the variable arr which represent the inner arrays which returns the element at index 0 
the puts method outputs a string representation of the return values (1, 3) and returns nil
the map method does not care about the truthiness of the return value and takes the return value of the block and returns a new array with the elements transformed
the map method returns an array of two nils
=end

# 3

[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end

=begin
the map method is being called on the nested array
the inner arrays are being passed into the block in turn and being passed to the variable arr
the first method is being called on the variable arr which returns the object at index 0
the puts method takes the return vales and outputs a string representation (1, 3) and returns nil
the last line of code in the block returns the objects at index 0 of the inner arrays
the map method does not care about truthiness of a return value
the map method performs transformation based on the return value of the block (1, 3)
the map method returns a new array with the transformed objects
=end

# 4

my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

=begin
the nested array is being assigned to the variable my_arr
the each method is being called on the nested array
the inner arrays are being passed into the block in turn and being assigned to the variable arr
the each method is being called on the variable arr
the integers in the nested arrays are being passed into the block in turn and being assigned to the variable num
the comparison operator is returning a boolean which is then used by the if conditional
the puts method then outputs a string representation of the integers that are meet the condional
the inner each method returns nil because the last line of code evaluated is puts and puts returns nil
the each method does not do anything with the return value of the block and returns the calling object
the outer each method does not care about the return value of the blokc and returns the calling object which would be the nested array
=end

# 5

[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

=begin
the map method is being called on the nested array
the inner arrays are beings passed into the block in turn and being assigned to the variable arr
the map method is being called on the variable arr
the integers in the inner arrays are being passed into the block in turn and being assigned to the variable num
the return value of the inner map block is used to perform transformation 
because the last line of code evaluated on the inner map block returns truthy, transformation is performed on the inner arrays
each integer is multiplied by 2 and the inner map method returns a new nested array of the all the integers multiplied by 2
the outer map method takes the return value of the block to perform transformation and returns a new array with the transformed inner arrays 
returning a nested array with the integers multiplied by 2
=end

# 6

[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end
# => [{ :c => "cat" }]

=begin
the select method is being called on the array of hashes
each inner hash is being passed into the block in turn and being assigned to the variable hash
the all? method is being called on the inner hash
the key and value pairs are being passed into the block in turn and being assigned to the variables key and value, respectively
the comparion operator == is seing if the element at index 0 of the value is equal to the key in string representation
the all? method only returns true if all of the comparisons return true
the select method cares about the truthiness of a return value and will return a new array with the hash {:c = 'cat'} inside
=end 
# if we were to use the any? method, that would change the end result since the any method returns true if only one comparison returns true

# 7

arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]

arr.sort_by do |sub_arr|
  sub_arr.map do |num|
    num.to_i
  end
end
# => [["1", "8", "9"], ["1", "8", "11"], ["2", "6", "13"], ["2", "12", "15"]]

=begin
the sort_by method is being called on the neste multidimensional array
each inner array is being passed into the block in turn and being assigned to the variable sun_arr
the map method is then called on the variable arr and the strings are being passed into the block in turn and assigned to the variable num
the to_i method returns a new array and is turning the strings into its integer values
the map method takes the return value of the block to perform transformation returning a new array with the integer values
the code in the outer block determines how the items are compared
because the map method transformed the strings into their respective integer values, the outer sort_by method sorts the inner arrays in numerical order and returns a new array with the sorted inner arrays
=end

# 8

[[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |arr|
  arr.select do |item|
    if item.to_s.to_i == item    # if it's an integer
      item > 13
    else
      item.size < 6
    end
  end
end
# => [[27], ["apple"]]

=begin
the map method is being called on the nested array
each inner array is passed into the block in turn and assigned to the variable 'arr'
the select method is being called on the inner arrays
each element of the inner arrays are being passed into the block in turn and being assigned to the variable 'item'
the if conditional is first comparting the item and the item with the chained methods to_s.to_i which is trying to evaluate if the elemens is an integer
if so, the > operator is comparing the item with the integer 13
the integers whose value is greater than 13 will be returned true
if not an integer, the if statment will. be bypassed and the else statement will be performed
the size method is called to the item which returns an integer value of the length of the string
the < operator compares the return value with the integer 6 and returns true if the length of the string is less than 6
the inner select method only cares about the truthiness of the block and will perform selection based on the return value
the select method will return a new array will all of the elements which return true
the map method does not care about truthiness will take the return value of the block to perform transformation
it will return a nested array with the selected elements
=end

# 9

[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
  element1.each do |element2|
    element2.partition do |element3|
      element3.size > 0
    end
  end
end
# => [[[1], [2], [3], [4]], [["a"], ["b"], ["c"]]]

=begin
the map method is being called on the three level nested array
each inner array is being passed into the block in turns and being assigned to the variable 'element1'
the each method is being called on the inner arrays
each inner-inner array is being passed into the block in turns and being assigned to the variable 'element2'
the partition method is being called on each inner-inner-inner array
each element is being passed into the block in turns and being assigned to the variable 'element3'
the size method is being called on each element and returns the size of each element
the > comparison compares the element's size with the value 0 and will return a boolean
the partition method returns two arrays, the first array with the elements which return true and a second array for the elements which return false
each and every element returns true in this matter and will return a highly nested array with an empty array adjacent to each array with the element
the each method does not do anything with the return value and will return the calling object
since the return value of the block for the map method is the calling object
the calling object will be returned
=end

# 10

[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.size == 1    # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end

=begin
the map method is being called on the multidimensional array
each inner array is being passed into the block in turns and being assigned to the variable 'arr'
the map methos is being called on the inner arrays
the inner arrays are being passed into the block in turns and being assigned to the variable 'el'
in the conditional if statement the element's string size is being compared to the integer 1
if the size of the element returns true, the integer is being incremented by 1
if the size of the element returns false, the else statement is executed
the map method is called on the inner-inner array
each inner-inner array is passed into the block in turns and assigend to the variable 'n'
because the return value of the block is truthy, each element, which is an integer, is incremented by one
the map method returns a new multidimensional array with the incremented integers
=end 

# practice problems: sorting, nested collections and working with blocks

# 1
# order the array of number strings by descending numeric value

arr = ['10', '11', '9', '7', '8']

arr.sort do |a, b|
  b.to_i <=> a.to_i
end 

# 2  
# order the array of hashes based on year of publication from earliest to latest
# since all the strings we are comparing are the same length, we do not need to convert to integer

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

books.sort_by do |book|
  book[:published]
end

# 3
# access the letter 'g'

arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]
arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
hsh2[:third].key(0) # => returns the key of the occurence given (0)
# hsh2[:third].keys[0]

# 4
# change the value 3 to 4
arr1 = [1, [2, 3], 4]
arr1[1][1] = 4

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[2] = 4

hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2][0] = 4

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[['a']][:a][2] = 4

# 5
# figure out total age of just the male members of the family

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_age = 0
munsters.select do |name, details|
    if details["gender"] == "male"
      total_age += details["age"]
    end 
  total_age
end 

total_age

# 6
# print out name, age, and gender of each family member from previous hash

munsters.each do |name, details|
  puts "#{name} is a #{details["age"]}-year-old #{details["gender"]}"
end 

# 7
# what will be the final values of 'a' and 'b'?

a = 2
b = [5, 8]
arr = [a, b]
# arr = [2, [5, 8]]

arr[0] += 2
# arr = [4, [5, 8]] not referencing the variable a but is modifying the arr

arr[1][0] -= a
# arr = [2, [3, 8]] you can mutate the elements of an array

a = 2
b = [3, 8]

# 8
# using the each method, output all the vowels from the strings
=begin
iterate through the hash
iterate through the array of strings
iterate through each string
if a character in the string is a vowel, output it
=end

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = 'aeiou'
hsh.each do |_, strings|
  strings.each do |string|
    string.chars.each do |char|
      puts char if vowels.include?(char)
    end 
  end 
end 

# 9 
# return a new array of the same structure but with the sub arrays being ordered in descending order
=begin
iterate through outer array
iterate through inner arrays
sort in descending order
=end

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a
  end 
end 

# 10
# without modifying the original array, use the map method to return a new array identical in structure but with each value incremented by 1

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hash|
  incremented_hash = {}
    hash.each do |key, value|
      incremented_hash[key] = value + 1
    end 
  incremented_hash
end 

# 11
# return a new array identical in structure to the original but containing only the integers that are multiples of 3

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |sub_arr|
  sub_arr.select do |int|
    int % 3 == 0
  end 
end 

# 12
# without using the to_h method, return a hash where the key is the first item in each sub array and the value is the second item

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

hash = {}
arr.each do |sub_arr|
    hash[sub_arr[0]] = sub_arr[1]
end 
    
hash

# 13
# return a new array containing the same sub-arrays as the original but ordered logically by the odd number

arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

arr.sort_by do |element|
  element.select do |int|
    int % 2 != 0
  end 
end 

# 14
# return an array containing the colors of the fruits and the sizes of the vegetables
# the sizes should be uppercase and the colors should be capitalized

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

hsh.map do |_, value|
  if value[:type] == "vegetable"
    value[:size].upcase 
  elsif value[:type] == "fruit"
    value[:colors].map do |color|
      color.capitalize
    end 
    value[:colors]
  end 
end

# 15
# return an array which contains only the hases where all the integers are even

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr.select do |hash|
  hash.all? do |_, value|
    value.all? do |int|
      int.even?
    end 
  end 
end 

# 16
=begin 
UUID
UUID consists of 32 hexadecimal characters and is typically broken down into 5 sections
8-4-4-4-12 represented as a string
write a method that returns one UUID when called with no parameters
=end

def make_uuid
  characters = []
  
end 
      
  