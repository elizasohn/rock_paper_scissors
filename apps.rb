#!/usr/bin/env ruby
# require ('rspec')
require ('./lib/rock_paper_scissors')

puts("  ____   ___   ____ _  __  ____   _    ____  _____ ____    ____   ____ ___ ____ ____   ___  ____  ____  ")
puts(" |  _ \\ / _ \\ / ___| |/ / |  _ \\ / \\  |  _ \\| ____|  _ \\  / ___| / ___|_ _/ ___/ ___| / _ \\|  _ \\/ ___| ")
puts(" | |_) | | | | |   | ' /  | |_) / _ \\ | |_) |  _| | |_) | \\___ \\| |    | |\\___ \\___ \\| | | | |_) \\___ \\")
puts(" |  _ <| |_| | |___| . \\  |  __/ ___ \\|  __/| |___|  _ <   ___) | |___ | | ___) |__) | |_| |  _ < ___) |")
puts(" |_| \\_\\\\___/ \\____|_|\\_\\ |_| /_/   \\_\\_|   |_____|_| \\_\\ |____/ \\____|___|____/____/ \\___/|_| \\_\\____/ ")

resume = true
while (resume)

  puts("Select your play:")
  puts("1: Rock")
  puts("2: Paper")
  puts("3: Scissors")
  input = gets.chomp
  # if input == '1'
  #   input = 'rock'
  # elsif input == '2'
  #   input = 'paper'
  # elsif input == '3'
  #   input = 'scissors'
  # end
  choices = ['rock', 'paper', 'scissors']
  player2 = (rand(3)+1).to_s
  game1 = Rps.new(input, player2)

  puts("You have selected #{choices[input.to_i-1]}")
  puts("The computer chose #{choices[player2.to_i-1]}")
  if game1.wins?() == true
    puts("YOU WOOOONNNN!!!!")
  elsif game1.wins?() == false
    puts("YOU LOOOOOOSE!!!!")
  elsif game1.wins?() == "You have tied!"
    puts("You tied!")
  end

  puts("Would you like to play again? Y/N ")
  doResume = gets.chomp
  if doResume == "Y" || doResume == "y"
    resume = true
  else
    resume = false
  end
  puts("Ending Program")
  puts("Good bye.")
end
