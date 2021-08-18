class Question
  def initialize
    @a = rand(10)
    @b = rand(10)
    @sum = @a + @b
  end

  def printQuestion(player)
    puts "Player #{player}: What does #{@a} plus #{@b} equal?"
  end

  def checkAnswer
    print "> "
    answer = gets.chomp
    if answer.to_i == @sum 
      return true
    else
      return false
    end
  end
end