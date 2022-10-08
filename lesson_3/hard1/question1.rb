if false
  greeting = "hello world"
end

greeting
# this will output nil because when you initialize a local variable within an if block
# even if that if block doesn't get executed, the local variable is initialized to nil
