=begin
Madlibs revisited
P:
  input: nothing
  output: madlib
E:

A:
  noun method:
    - initialize an array of nouns
    - return a random noun
  adjective method:
    - initialize an array of adjectives
    - return a random adjective
  adverb method:
    - initialize an array of adverbs
    - return a random adverb
  verb method:
    - initialize an array of verbs
    - return a random verb
  madlib method:
    - format sentence with random words
    The %{adjective} brown %{noun} %{adverb}
    %{verb} the %{adjective} yellow
    %{noun}, who %{adverb} %{verb} his
    %{noun} and looks around.
=end

# def noun
#   %w(bottle letter flyer pamphlet dog tiger basket).sample
# end

# def adjective
#   %w(red blue shiny enormous tiny silly stupid sentient shy).sample
# end

# def adverb
#   %w(astily slowly silently idiotically brilliantly angrily)
# end

# def verb
#   %w(eats drinks kisses caresses hoists bumps murders shames)
# end

# def madlibs
  
# end

=begin
seeing stars
Write a method that displays an 8-pointed star in an nxn grid, where n is an odd
integer that is supplied as an argument to the method. The smallest such star you 
need to handle is a 7x7 grid.

P:
  input: integer
  output: star grid
E:
  star(7)
  *  *  *
   * * *
    ***
  *******
    ***
   * * *
  *  *  *
  
  star(9)
  *   *   *
   *  *  *
    * * *
     ***
  *********
     ***
    * * *
   *  *  *
  *   *   *
=end

=begin
transpose 3X3
P:
  input: nested array
  output: nested array but rearragned
E:
  matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
  ]

  new_matrix = transpose(matrix)
  
  p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
  p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
  
A:
  - initialize final = []
  - iterate through the array with index positions
    - return a nested array of the integers at each index position in the nested arrays in each nested array
=end

# def transpose(matrix)
#   final = []
#   (0...matrix.size).each do |int|
#     matrix.each do |nest|
#       final << nest[int]
#     end
#   end
#   final.each_slice(3).to_a
# end

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# new_matrix = transpose(matrix)

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

=begin
transpose MXN
Modify your transpose method from the previous exercise so it works with any matrix with at least 1 row and 1 column.
P:
  input: nested array
  output: transposed nested array
E:
  transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
  transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
  transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
    [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
  transpose([[1]]) == [[1]]
=end

# def transpose(matrix)
#   size = matrix[0].size
#   final = []
#   (0...size).each do |int|
#     matrix.each do |nest|
#       final << nest[int]
#     end
#   end
#   final.each_slice(matrix.size).to_a
# end

# p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
# p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
# p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
#   [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
# p transpose([[1]]) == [[1]]

=begin
rotating matrices
matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]
A 90-degree rotation of a matrix produces a new matrix in which each side of 
the matrix is rotated clockwise by 90 degrees. For example, the 90-degree 
rotation of the matrix shown above is:
3  4  1
9  7  5
6  2  8
A 90 degree rotation of a non-square matrix is similar. For example, the rotation of:
3  4  1
9  7  5
is:
9  3
7  4
5  1
Write a method that takes an arbitrary matrix and rotates it 90 degrees clockwise as shown above.
P:
  input: nested array
  output: nested array rotated by 90
E:
  matrix = [
    [1, 5, 8],
    [4, 7, 2],
    [3, 9, 6]
  ]
  3  4  1
  9  7  5
  6  2  8
  rules:
    - first nested array becomes the last integer in new nested arrays
    - middle nested array becomes the middle integer in the new nested arrays
    - last nested array becomes the first integer in the new nested arrays
    - number of nested arrays determines the number of elements in the nested arrays in rotated array
A:
  - initialize final = []
  - count = the size of the nested array
  - iterate through the array with index positions
    - 
      
=end

# def rotate90(matrix)
#   final = []
#   count = matrix[0].size
#   matrix.each_with_index do |nest, idx|
    
#   end
#   final
# end

# matrix1 = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# matrix2 = [
#   [3, 7, 4, 2],
#   [5, 1, 0, 8]
# ]

# new_matrix1 = rotate90(matrix1)
# new_matrix2 = rotate90(matrix2)
# new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

# p new_matrix1# == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
# p new_matrix2 #== [[5, 3], [1, 7], [0, 4], [8, 2]]
# p new_matrix3 == matrix2

=begin
fix the bug

=end

# def my_method(array)
#   if array.empty?
#     []
#   elsif array.size > 1
#     array.map do |value|
#       value * value
#     end
#   else
#     [7 * array.first]
#   end
# end

# p my_method([])# == []
# p my_method([3])# == [21]
# p my_method([3, 4])# == [9, 16]
# p my_method([5, 6, 7])# == [25, 36, 49]

=begin
merge sorted list
Write a method that takes two sorted Arrays as arguments, and returns a new 
Array that contains all elements from both arguments in sorted order.

You may not provide any solution that requires you to sort the result array. 
You must build the result array one element at a time in the proper order.

Your solution should not mutate the input arrays.
P:
  input: two arrays
  output: merged arrays with integers sorted
E:
  merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
  merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
  merge([], [1, 4, 5]) == [1, 4, 5]
  merge([1, 4, 5], []) == [1, 4, 5]
A:
  - initialize merged to the two input arrays merged together
  - iterate through the merged array with index
    - if the current element is greater than the element at the next index position
      - switch the two positions
    - if the current element is smaller than the element at the next index position
      - keep them
    - if the element at the next position is nil
      - keep them
  - return the sorted merged array
=end

def merge(arr1, arr2)
  p merged = arr1 + arr2
  
end

p merge([1, 5, 9], [2, 6, 8])# == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2])# == [1, 1, 2, 2, 3]
# p merge([], [1, 4, 5])# == [1, 4, 5]
# p merge([1, 4, 5], [])# == [1, 4, 5]
