answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8
# the output will be 34 because integers are immutable
# the new_answer is pointing to a different object than the variable answer