require './players'
require './game'

p = Players.new
game = Game.new(p.player1, p.player2)

while (p.life_remaining) 
  puts "----- NEW TURN -----"
  
  if(!game.question) 
    p.lose_a_life(game.player_id)
  end

  puts "#{p.player1}: #{p.player1_life}/3, #{p.player2}: #{p.player2_life}/3"

  game.next_player
end

game.winner

puts "----- GAME OVER! -----"
puts "Good bye!"