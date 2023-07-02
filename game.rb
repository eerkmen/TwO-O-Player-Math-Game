require "./player_info.rb"
require "./random_question.rb"

class Game
  attr_reader :player1, :player2

  def initialize()
    @player1 = Player_Info.new("Player 1") # Initialize player 1
    @player2 = Player_Info.new("Player 2") # Initialize player 2

    @player1.turn = true # Set player 1 as the first player to play
  end

  def ask()
    player_turn = @player1.turn ? @player1 : @player2 # Determine which player's turn it is

    question = Random_Question.new() # Generate a random math question

    puts "#{player_turn.name}: What is #{question.first} + #{question.second}?"

    player_answer = gets.chomp

    if player_answer.to_i == question.answer
      puts "Correct! #{question.first} + #{question.second} = #{question.answer}."
      player_turn.increment_Score # Increment player's score for correct answer
    else
      player_turn.remaining_life # Decrement player's life counter for incorrect answer
      puts "Lost a life! Remaining life/lives #{player_turn.life_counter}"
    end

    (@player1.turn ? @player2 : @player1).turn = true # Switch turns to the other player
    player_turn.turn = false # Set current player's turn to false
  end

  def play()
    while (@player1.life_counter > 0) && (@player2.life_counter > 0)
      ask() # Ask the question and validate the answer

      if (@player1.life_counter > 0) && (@player2.life_counter > 0)
        puts "--------NEXT TURN-------"
      end
    end

    puts "--------END GAME---------"

    winner = @player1.life_counter.to_i == 0 ? @player2 : @player1 # Determine the winner

    puts "#{winner.name} is the winner with a score of #{winner.score_counter}!"
  end
end
