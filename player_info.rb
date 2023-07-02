class Player_Info
  attr_accessor :name, :life_counter, :score_counter, :turn

  def initialize(name)
    @name = name
    @life_counter = 3
    @score_counter = 0
    @turn = false
  end

  def remaining_life
    @life_counter -= 1
   
  end

  
  def increment_Score
    @score_counter += 1
  end
end
