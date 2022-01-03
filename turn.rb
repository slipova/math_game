class Turn
  attr_accessor :counter

  def initialize
    @counter = 0
  end

  def new_turn
    @counter += 1
  end

end