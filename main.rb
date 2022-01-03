require './turn'
require './question'
require './player'

puts "Welcome to the game!"

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
turn = Turn.new

while player1.lives > 0 && player2.lives > 0
  
  current_player = player2
  
  if turn.counter % 2 == 0
    current_player = player1
  end
    
  question = Question.new
  puts "#{current_player.name}: What does #{question.num1} plus #{question.num2} equal?"
  answer = gets.chomp
  correct_answer = question.num1 + question.num2
  
  if answer != correct_answer.to_s
    current_player.lose_life
    puts "Incorrect! The answer is #{correct_answer}"

  else
    puts "Correct!"
  end
  
  puts "P1: #{player1.lives} vs P2: #{player2.lives}"
  puts "------ NEW TURN ------"
  turn.new_turn

end


if player1.lives > 0
  puts "#{player1.name} wins with a score #{player1.lives}/3"
else
  puts "#{player2.name} wins with a score #{player2.lives}/3"
  
end

puts "GAME OVER"

