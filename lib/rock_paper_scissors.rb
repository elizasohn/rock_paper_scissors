class Rps
  def initialize (input, player2)
    @input = input
    @player2 = player2
  end

  # def input= (input)
  #   @input = input
  # end
  #
  # def player2= (player2)
  #   @player2 = player2
  # end

  def wins?()
    plays = {"1"=>"rock","2"=>"paper","3"=>"scissors"}

    play1 = plays.fetch(@input)
    play2 = plays.fetch(@player2)

    if
      (play1 == 'rock') && (play2 == 'scissors')
      return true
    elsif
      (play1 == 'rock') && (play2 == 'rock')
      return "You have tied!"
    elsif
      (play1 == 'rock') && (play2 == 'paper')
      return false
    elsif
      (play1 == 'paper') && (play2 == 'scissors')
      return false
    elsif
      (play1 == 'paper') && (play2 == 'rock')
      return true
    elsif
      (play1 == 'paper') && (play2 == 'paper')
      return "You have tied!"
    elsif
      (play1 == 'scissors') && (play2 == 'scissors')
      return "You have tied!"
    elsif
      (play1 == 'scissors') && (play2 == 'rock')
      return false
    elsif
      (play1 == 'scissors') && (play2 == 'paper')
      return true
    end
  end


end
