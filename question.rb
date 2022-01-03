class Question
  attr_reader :num1, :num2
  
  def initialize
    @num1 = rand(20)
    @num2 = rand(20)
  end

end
