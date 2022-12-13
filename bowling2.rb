def score_bowling_game(rolls)
  total_score = 0
  current_roll = 0

  # Loop through the rolls and keep track of the score for the current frame
  10.times do
    if rolls[current_roll] == 10 # strike
      total_score += 10 + rolls[current_roll + 1] + rolls[current_roll + 2]
      current_roll += 1
    elsif rolls[current_roll] + rolls[current_roll + 1] == 10 # spare
      total_score += 10 + rolls[current_roll + 2]
      current_roll += 2
    else
      total_score += rolls[current_roll] + rolls[current_roll + 1]
      current_roll += 2
    end
  end

  total_score
end

# Example game with a score of 10 + 10 + 3 + 7 + 7 + 3 + 6 + 4 + 10 + 8 + 1 = 83
game_rolls = [10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10]

puts score_bowling_game(game_rolls)
