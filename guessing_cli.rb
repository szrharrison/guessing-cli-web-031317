# Code your solution here!

def get_user_input
  puts "Guess a number between 1 and 6."
  gets.chomp
end

def generate_number
  rand(1..6).to_s
end

def reply_to_user( number, guess )
  if number == guess
    'You guessed the correct number!'
  else
    "The computer guessed #{number}."
  end
end

def run_guessing_game
  input = ''
  while input != 'exit'
    number = generate_number
    input = get_user_input
    if input != 'exit'
      puts reply_to_user( number, input )
    else
      puts 'Goodbye!'
    end
  end
end
