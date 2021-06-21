# class game - generate random numbers, store the question, check the score, store the correct and incorrect responses
class Computer
  
  attr_reader :question, :solution, :current_player

  def initialize
    @numbers = []
    @question = ""
    @turn = 1
    @solution = 0
    @current_player = "p1"
  end

  def random_numbers
    @numbers = [rand(1..20), rand(1..20)]
    @question = "What does #{ @numbers[0] } plus #{ @numbers[1] } equal?"
  end

  def solution
    @solution = @numbers.reduce(0, :+)
  end

  def next_turn
    @turn = 3 - @turn
    @current_player = "p#{turn}"
  end

  def compare(guess)
    guess === @solution
  end

end


