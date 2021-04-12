system("cls") || system("clear")

#main_menu
def main()
  print_menu
  puts "| 1. Start game  |", "| 2. Leaderboard |", "| 3. Exit        |"
  puts "Enter your selection 1, 2 or 3:"
  selection = gets.chomp

  while (!([1, 2, 3].include?(selection.to_i)))
    puts "Invalid option entered! Please enter 1, 2 or 3 only:"
    selection = gets.chomp
  end

system("cls") || system("clear")
#clear_console next time
#def clear_console
# puts "\e[H\e[2J"
#end

  if selection.to_i == "1"
      play_game(scores)
    elsif selection.to_i == "2"
      show_leaderboard(scores)
    elsif selection.to_i == "3"
      exit_game()
  end
end

def print_menu
  print_line
  puts "| Welcome to Guess My Secret Number Game! |"
  print_line
end

def print_line
  puts "="*50
end

def exit_game
  exit
end

#play_game
def play_game(scores)
  puts computer_guess = rand(1..20)

  #guesses_count = 0
  # user_guesses = []
  tries = 1
  guess_limit = 7
  player = []
  player = name

  puts "Hi there, what's your name?"
  name = gets.chomp.capitalize

system("cls") || system("clear")

  puts "Let's see if you can guess my favourite number #{name}!"
  sleep(2)
  puts "Guess a number between 1-20."
  user_guess = gets.to_i
  #guesses_count += 1

  while (user_guess != computer_guess) && (tries < guess_limit)
    #if user_guesses.include?(user_guess)
    #  puts "You've already tried this number, try again"
    #else
    puts "Sorry, you got it wrong."
    user_guess = gets.to_i
    puts "You have #{guess_limit - tries} tries left."
    tries += 1
  end

    #user_guesses << user_guess # Add user guess to the array of previous guesses

    if tries < guess_limit # puts score above congrats

      # def say(score=[])
      # sort_score = score.sort_by {|key, value| value}
      #  if score[1] > 0
      #  puts "#{index+1}, #{score[0]} - #{score[1]}"
      #  end
      # end
      puts "Congrats! You got it correct #{name}."


      play_again()
    else
      puts "Sorry, you ran out of tries"
      play_again()
    end
  end

def play_again()
  puts "Would you like to try again? [y/n]"
  selection = gets.chomp.downcase
  while (selection == "y") # Allow the user to keep playing if they finish a game
    play_game()
  end
  while (selection == "n")
    main()
  end
end

#leaderboard
def show_leaderboard(name, scores)
  sort_score = scores.sort_by {|key, value| value}
  sort_score.each do | score |
    puts "=" * 50
    puts "|                 Leaderboard                    |"
    puts "=" * 50
    puts "#{score[0]} - #{score[1]}"
  #  if score[1] > 0
  #  puts "#{index+1}, #{score[0]} - #{score[1]}"
  #  end
end

main()
