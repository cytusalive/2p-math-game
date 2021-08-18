require_relative 'player'

player1 = Player.new(3)
player2 = Player.new(3)

while player1.hp > 0 && player2.hp > 0 do
  puts player1.hp
  player1.losehp
end