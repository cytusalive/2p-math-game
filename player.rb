class Player
  def initialize(hp)
    @hp = hp
  end

  attr_accessor :hp

  def losehp
    @hp -= 1
  end
end
