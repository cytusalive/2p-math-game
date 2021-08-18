require_relative 'player'
require_relative 'questions'


player1 = Player.new(3)
player2 = Player.new(3)
player_turn = 1

while player1.hp > 0 && player2.hp > 0 do
  player1.losehp
  question = Question.new
  question.printQuestion(player_turn)
  question.checkAnswer
  if player_turn == 1
    player_turn = 2
  elsif player_turn == 2
    player_turn = 1
  end
end