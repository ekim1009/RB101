def lies_between(number)
  if (10..100).include?(number)
    true
  else
    false
  end
end

puts lies_between(42)
puts lies_between(5)


(10..100).cover?(42)