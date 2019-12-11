require ('pry')
require ('rspec')
require('rock_paper_scissors')

describe("RPS#wins") do
  it("returns true if rock is the object and scissors is the argument") do
    game1 = Rps.new('rock', 'scissors')
    expect(game1.wins?()).to(eq(true))
  end

  it("returns a statement if rock is the object and rock is the argument") do
    game1 = Rps.new('rock', 'rock')
    expect(game1.wins?()).to(eq("You have tied!"))
  end

  it("returns false if rock is the object and paper is the argument") do
    game1 = Rps.new('rock', 'paper')
    expect(game1.wins?()).to(eq(false))
  end

  it("returns false if rock is the object and paper is the argument") do
    game1 = Rps.new('rock', 'paper')
    expect(game1.wins?()).to(eq(false))
  end

  it("returns false if rock is the object and paper is the argument") do
    game1 = Rps.new(@player1, @player2)
    game1.play()
    expect(game1.wins?()).to(eq(false))
  end

end
