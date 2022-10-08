a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# a and c will point to the same object which will result in them having the same object id
# c was initialized to the object referenced by a
# b will have a different object id because you are not having the variable b point to the same object as variable a
