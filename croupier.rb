# import methods from black_jack
require_relative 'black_jack'

# implement a method which displays the current scores
def current_scores(player_score, dealer_score)
  puts ""
  puts "Your score: #{player_score}"
  puts "Dealer score: #{dealer_score}"
end

# implement a method to be called at the end of game with the outcome
def end_game(player_score, dealer_score)
  if player_score > 21
    "You've gone bust!"
  elsif player_score == 21
    "Black Jack!"
  elsif player_score == dealer_score
    "It's a tie"
  elsif player_score > dealer_score
    "Winner, winner, chicken dinner!"
  else
    "The house always wins!"
  end
end