class Question
  attr_accessor :number_1, :number_2, :ask_question, :correct_answer
  def initialize
    @number_1 = rand(1...10)
    @number_2 = rand(1...10)
    @correct_answer = @number_1 + @number_2
  end

  def ask_question
    puts "What does #{number_1} plus #{number_2} equal?"
  end

  def answer (player_answer)
    if player_answer == correct_answer
      puts "YES! You are correct."
      true
    else
      puts "Seriously? No!"
      puts "Correct answer is: #{correct_answer}"
      false
    end
  end

end