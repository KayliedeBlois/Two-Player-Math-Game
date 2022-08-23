class Game

  def initialize
    @player1 = player1
    @player2 = player2
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
