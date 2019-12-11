class Rps
  def initialize (input, player2)
    @input = input
    @player2 = player2
  end

  def input= (input)
    @input = input
  end

  def player2= (player2)
    @player2 = player2
  end

  def wins?()
    if
      (@input == 'rock') && (@player2 == 'scissors')
      return true
    elsif
      (@input == 'rock') && (@player2 == 'rock')
      return "You have tied!"
    elsif
      (@input == 'rock') && (@player2 == 'paper')
      return false
    elsif
      (@input == 'paper') && (@player2 == 'scissors')
      return false
    elsif
      (@input == 'paper') && (@player2 == 'rock')
      return true
    elsif
      (@input == 'paper') && (@player2 == 'paper')
      return "You have tied!"
    elsif
      (@input == 'scissors') && (@player2 == 'scissors')
      return "You have tied!"
    elsif
      (@input == 'scissors') && (@player2 == 'rock')
      return false
    elsif
      (@input == 'scissors') && (@player2 == 'paper')
      return true
    end
  end


end
