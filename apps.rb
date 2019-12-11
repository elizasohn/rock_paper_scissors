#!/usr/bin/env ruby
# require ('rspec')
require ('./lib/rock_paper_scissors')

puts("Let's Play Rock Paper Scissors!")

resume = true
while (resume)

  puts("Select your play:")
  puts("1: Rock")
  puts("2: Paper")
  puts("3: Scissors")
  input = gets.chomp
  if input == '1'
    input = 'rock'
  elsif input == '2'
    input = 'paper'
  elsif input == '3'
    input = 'scissors'
  end
  choices = ['rock', 'paper', 'scissors']
  player2 = choices[rand(3)]
  game1 = Rps.new(input, player2)

  puts("You have selected #{input}")
  puts("The computer chose #{player2}")
  if game1.wins?() == true
    puts("YOU WOOOONNNN!!!!")
  elsif game1.wins?() == false
    puts("YOU LOOOOOOSE!!!!")
  elsif game1.wins?() == "You have tied!"
    puts("You tied!")
  end

  puts("\n \n Would you like to play again? Y/N ")
  doResume = gets.chomp
  if doResume == "Y" || doResume == "y"
    resume = true
  else
    resume = false
  end
  puts("Ending Program")
  puts("Good bye.")
end
