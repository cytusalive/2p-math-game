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
    answer = gets.chomp
    if answer.to_i == @sum 
      puts "correct"
    else
      puts "wrong"
    end
  end
end