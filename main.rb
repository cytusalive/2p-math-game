require_relative 'player'
require_relative 'questions'


player1 = Player.new(3)
player2 = Player.new(3)
players = [0, player1, player2]
player_turn = 1

while player1.hp > 0 && player2.hp > 0 do
  puts "----- NEW TURN -----"
  puts
  question = Question.new
  question.printQuestion(player_turn)
  if question.checkAnswer 
    puts "Player #{player_turn}: ✅ Correct!"
  else  
    puts "Player #{player_turn}: ❌ Incorrect!"
    players[player_turn].losehp
  end
  puts "P1: #{players[1].hp}/3 vs P2: #{players[2].hp}/3"
  puts

  if player_turn == 1
    player_turn = 2
  elsif player_turn == 2
    player_turn = 1
  end
end

puts "🎉🎉🎉 Player #{player_turn} wins with the score of #{players[player_turn].hp}/3 🎉🎉🎉"
puts
puts "----- GAME OVER -----"
puts
puts "Good bye!"
