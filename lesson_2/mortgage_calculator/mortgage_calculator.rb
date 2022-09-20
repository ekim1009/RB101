require 'yaml'
MESSAGES = YAML.load_file('mortgage_calculator_messages.yml')

def prompt(message)
  puts("=> #{message}")
end

# make sure inputs are valid numbers
def valid_number?(num)
  num.to_i > 0
end

# calculate the monthly payments
# monthly interest rate = apr / 100
def monthly_interest_rate(num)
  (num / 100) / 12
end

# loan duration in months = duration * 12
def duration_months(num)
  num * 12
end

# loan amount * (monthly interest rate / (1 - (1 / ((1 + monthly interest rate) * duration in months))))
def monthly_payment(total, rate, months)
  total * (rate /
  (1 - (1 + rate)**(-months)))
end


prompt(MESSAGES['welcome'])

user = ''
loop do
  # as for user name
  prompt(MESSAGES['name'])
  user = gets.chomp.capitalize!

  if user.empty?
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

  prompt("Hello #{user}")

  loop do
  total_loan = ''
  loop do
    # ask for loan amount
    prompt(MESSAGES['total'])
    total_loan = gets.chomp

    # check if the input is a valid number
    if total_loan.empty? || !valid_number?(total_loan)
      prompt(MESSAGES['valid_number'])
    else
      break
    end
  end

  apr = ''
  loop do
    # ask for APR
    prompt(MESSAGES['apr'])
    apr = gets.chomp

    # check if the input is a valid number
    if apr.empty? || !valid_number?(apr)
      prompt(MESSAGES['valid_number'])
    else
      break
    end
  end

  time = ''
  loop do
    # ask for loan duration
    prompt(MESSAGES['duration'])
    time = gets.chomp

    # check if the input is a valid number
    if time.empty? || !valid_number?(time)
      prompt(MESSAGES['valid_number'])
    else
      break
    end
  end

  duration = duration_months(time.to_i)

  monthly_interest_rate = monthly_interest_rate(apr.to_f)

  payments = monthly_payment(total_loan.to_i, monthly_interest_rate, duration)

  prompt("Your monthly payments are #{payments.round(2)}")

  prompt(MESSAGES['again'])
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end

prompt(MESSAGES['goodbye'])
