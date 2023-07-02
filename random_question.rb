class Random_Question 
  attr_accessor :first, :second, :answer

  def initialize()
    @first = rand(1..20) # Generate random number between 1 and 20
    @second = rand(1..20) # Generate random number between 1 and 20
    @answer = @first + @second # Calculate the answer
  end
end
