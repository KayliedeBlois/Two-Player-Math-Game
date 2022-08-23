class Game

  attr_reader :player1, :player2
  attr_accessor :player, :player_id

  def initialize
    @player1 = player1
    @player2 = player2
  end

  def current_player    #need to know whose turn it is
    player
  end

  def next_player       #to find out the next turn
    if self.player == self.player1
      self.player = self.player2
      self.player_id = 'player2'
    elsif self.player == self.player2
      self.player = self.player1
      self.player_id = 'player1'
    end
  end


  def question
    number_one = rand(1..20)
    number_two = rand(1..20)
    final_answer = number_one + number_two


  puts "What does #{number_one} plus #{number_two} equal?"
  answer = gets.chomp.to_i     #takes integer answer from user

    if answer == final_answer
      puts "YES! You are correct!"
      return true
    
    else 
      puts "Seriously? No!"
      return false
    end
  end

  def winner 
    puts "#{player} wins!"
  end 

end