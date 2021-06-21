# class game - generate random numbers, store the question, check the score, store the correct and incorrect responses
class Computer
  
  attr_reader :question, :solution, :current_player

  def initialize(players)
    @numbers = []
    @question = ""
    @turn = 0
    @solution = 0
    @current_player = players[@turn]
    @players = players
  end

  def random_numbers
    @numbers = [rand(1..20), rand(1..20)]
    @question = "What does #{ @numbers[0] } plus #{ @numbers[1] } equal?"
  end

  def next_turn
    @turn = 1 - @turn
    @current_player = @players[@turn]
  end

  def compare(guess)
    @solution = @numbers.reduce(0, :+)
    guess === @solution
  end

end


