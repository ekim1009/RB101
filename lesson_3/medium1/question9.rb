def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

puts bar(foo)

# this would output "no"
# the returned value from foo will always be "yes"
# since "yes" == "no" is false, the return value of bar will be "no"