def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

puts factors(0)
puts factors(300)

# the purpose of number % divisor == 0 is because if the modulo did not return a 0, it would not be divisible by that number

# the purpose of line 9 (factors) is so that the method returns the factors array
