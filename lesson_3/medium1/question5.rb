# limit = 15

def fib(first_num, second_num)
  limit = 15
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# the variable "limit" is defined outside the method
# which results in the variable not being in the scope of the method

# you can fix this by add limit as a parameter and passing it when you call the method