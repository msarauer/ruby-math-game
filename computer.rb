# class game - generate random numbers, store the question, check the score, store the correct and incorrect responses
class Computer
  
  attr_reader :question, :solution, :turn, :question

  def initialize
    @numbers = []
    @question = ""
    @turn = 1
    @solution = 0
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
  end
    

end


