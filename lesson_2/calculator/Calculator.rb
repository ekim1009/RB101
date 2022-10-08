require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts("==> #{message}")
end

def valid_number?(num)
  num.to_i >= 0
end

def float?(num)
  num.to_f >= 0.0
end

def number?(num)
  valid_number?(num) || float?(num)
end

def operation_to_message(op)
  word = case op
         when '1'
           'Adding'
         when '2'
           'Subtracting'
         when '3'
           'Multiplying'
         when '4'
           'Dividing'
         end
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = gets.chomp.capitalize

  if name.empty?
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi, #{name}!")

loop do
  number1 = ''
  loop do
    prompt(MESSAGES['number1'])
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else prompt(MESSAGES['not_valid'])
    end
  end

  number2 = ''
  loop do
    prompt(MESSAGES['number2'])
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else prompt(MESSAGES['not_valid'])
    end
  end

  operation_prompt = <<-MSG
    what operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
    MSG

  prompt(operation_prompt)

  operation = ''
  loop do
    operation = gets.chomp

    if %w(1 2 3 4).include?(operation)
      break
    else
      prompt(MESSAGES['choose'])
    end
  end

  prompt("#{operation_to_message(operation)} the two numbers...")

  answer = case operation
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

  prompt("The result is #{answer}")

  prompt(MESSAGES['again'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(MESSAGES['goodbye'])
