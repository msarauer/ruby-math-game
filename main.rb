require "./computer"
require "./player"


p1 = Player.new("Player 1")
p2 = Player.new("Player 2")
players = [p1, p2]
game = Computer.new(players)

loop do
  puts "#{game.current_player.name}: #{game.random_numbers}"
  if game.compare(game.current_player.get_guess.to_i) 
    puts "#{game.current_player.name}: YES! You are correct!"

  else
    puts "#{game.current_player.name}: Seriously? No!"
    game.current_player.lives -= 1
  end

  break if game.current_player.lives < 1
  puts "P1: #{p1.lives}/3 vs P2: #{p2.lives}/3"
  game.next_turn
  puts "----- NEW TURN -----"
end
game.next_turn
puts "#{game.current_player.name} wins with #{game.current_player.lives} lives remaining"
puts "----- GAME OVER -----"
puts "Good bye!"