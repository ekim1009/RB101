require 'yaml'
MESSAGES = YAML.load_file('mortgage_calculator_messages.yml')

def prompt(message)
  puts("=> #{message}")
end

# make sure inputs are valid numbers
def valid_number?(num)
  num.integer?
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
  total * (rate / (1 - (1 + rate)**(-months)))
end

loop do
  prompt(MESSAGES['welcome'])

  user = ''
  loop do
    # as for user name
    prompt(MESSAGES['name'])
    user = gets.chomp

    if user.empty?
      prompt(MESSAGES['valid_name'])
    else 
      break
    end 
  end

  prompt("Hello #{user}")

  total_loan = ''
  loop do
    # ask for loan amount
    prompt(MESSAGES['total'])
    # save answer as an integer
    total_loan = gets.chomp

    if total_loan.empty? || total_loan.to_i < 0
      prompt(MESSAGES['valid_number'])
    else
      break
    end
  end

  apr = ''
  loop do
    # ask for APR
    prompt(MESSAGES['apr'])
    # save answer as a float
    apr = gets.chomp

    if apr.empty? || apr.to_i < 0
      prompt(MESSAGES['valid_number'])
    else
      break
    end
  end

  
  time = ''
  loop do
    # ask for loan duration 
    prompt(MESSAGES['duration'])
    # save answer as integer
    time = gets.chomp
    
    if time.empty? || time.to_i < 0
      prompt(MESSAGES['valid_number'])
    else
      break
    end
  end

  duration = duration_months(time.to_i)
  
  monthly_interest_rate = monthly_interest_rate(apr.to_f)
  
  monthly_payments = monthly_payment(total_loan.to_i, monthly_interest_rate, duration)

  prompt("Your monthly payments are #{monthly_payments.round(2)}")

  prompt(MESSAGES['again'])
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end

prompt(MESSAGES['googbye'])