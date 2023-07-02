# TwO-O-Player-Math-Game

This is a command-line application built with Ruby that simulates a two-player math game. Players take turns answering simple addition math problems, and a new math question is generated for each turn. The players start with 3 lives and lose a life if they answer a question incorrectly. At the end of each turn, the game displays the updated scores for both players. The game continues until one player loses all their lives, at which point the winner is announced along with the final score.

## Getting Started

1. Clone this repository to your local machine.
2. Ensure you have Ruby installed on your machine.
3. Open your terminal or command prompt and navigate to the project directory.

## Usage

To start the game, run the following command in your terminal:
ruby main.rb


The game will begin, and each player will take turns answering math questions. Enter your answer for each question, and the game will validate your answer. If your answer is correct, your score will increase by 1. If your answer is incorrect, you will lose a life. The game will display the remaining lives for each player after each turn. Once a player loses all their lives, the game will announce the winner along with the final score.

## Files

The project consists of the following files:

- `player_info.rb`: Defines the `Player_Info` class responsible for storing information about individual players.

- `random_question.rb`: Defines the `Random_Question` class responsible for generating random math questions.

- `game.rb`: Defines the `Game` class responsible for managing the game logic and flow.

- `main.rb`: The main entry point of the application. It creates an instance of the `Game` class and starts the game.

## Class Responsibilities

- `Player_Info` class: Stores information about individual players such as their name, life counter, score counter, and turn status. It provides methods to increment the score, decrement the life counter, and retrieve the remaining life count.

- `Random_Question` class: Generates random math questions by picking two numbers between 1 and 20. It calculates the answer and provides access to the generated question and answer.

- `Game` class: Manages the game loop and controls the flow of the game. It initializes the players, assigns turns, asks questions, validates answers, updates scores, and determines the winner.

## Dependencies

The game does not have any external dependencies. It is built using Ruby's core features and standard library.