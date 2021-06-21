# class player - initialize with lives, store their lives, get their answer
class Player
  
  attr_accessor :lives
  attr_reader :guess, :name

  def initialize(name)
    @lives = 3
    @guess = 0
    @name = name
  end

  def get_guess
    @guess = gets.chomp
  end
end