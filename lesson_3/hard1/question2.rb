greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings
# this will output { a: 'hi there'} because greetings and informal_greetings 
# are pointing to the same object.  the << mutates informal_greeting which in turn means the greetings is mutated
