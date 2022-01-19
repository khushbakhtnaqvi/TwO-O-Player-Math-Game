require './player'
require './question'

player_1 = Player.new("Player 1")
player_2 = Player.new("Player 2")

players = [player_1, player_2]

loop do
  # Generate a new question every loop and swap current player
  current_player = players[0]
  new_question = Question.new

  print "#{current_player.name}: "
  new_question.ask_question

  # Receive then convert the player input from string to integer
  player_answer = gets.chomp.to_i

  puts "You've answered: #{player_answer}"

  result = new_question.answer(player_answer)

  current_player.eval_answer(result)
  puts "P1: #{player_1.life}/3 vs P2: #{player_2.life}/3"
  break if (current_player.life == 0)

  # Swap players
  players[0], players[1] = players[1], players[0]
  puts "----- NEW TURN -----"
end

puts "#{players[1].name} wins with a score of #{players[1].life}/3"
puts "----- GAME OVER -----"
puts "Good bye!"