class players

  attr_accessor :player1, :player2, :player1_life, :player2_life

  def initialize
    puts "Player 1, please enter your name."
    @player1 = $stdin.gets.chomp            #$stdin.gets.chomp read's user's input
    puts "Player 2, please enter your name"
    @player2 = $stdin.gets.chomp
    puts "You both start with 3 lives. Each time you answer wrong, you will lose a life. Answer wisely."
    @player1_life = 3
    @player2_life = 3
  end 

  def lose_a_life (player)      #match player then take away a life
    if (player == 'player1')
      self.player1_life -= 1
    elsif (player == 'player2')
      self.player2_life -= 1
    end
  end 

end 