# import methods from croupier
require_relative "croupier"

puts "--------------------------------"
puts "  • Welcome to Casino Royale •  "
puts "--------------------------------"
puts ""

# generate dealer score and set it to a variable
dealer_score = generate_dealer_score

# initialise the player score variable with the value of 0
player_score = 0

# initialise a still playing variable set to true
still_playing = true

# while still_playing set to true, keep looping
while still_playing
  # ask the player if they want a card
  puts "Would you like to take card?"
  # get the response from the player
  response = gets.chomp.downcase
  # if the answer is yes, pick a player card and add it to the player score
  # if ["y", "yes"].include?(response)
  if (response == "yes") || (response == "y")
    # generate a card score and add it to the player_score
    player_score += generate_card_score
    # display the current scores by passing two arguments to the current_scores method
    puts current_scores(player_score, dealer_score)
    # continue the loop if the player_score is less than 21
    still_playing = player_score < 21
  else 
    still_playing = false
  end
end

# print endgame message when we break out of the loop, passing two arguments to the end_game method

puts end_game(player_score, dealer_score)