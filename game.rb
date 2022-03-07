require './question'
require './player'

class Game
  def start_game(players)
    puts "----- NEW TURN -----"

    question = Question.new

    puts "#{players[0].name}: #{question.question}"
    print ">"

    answer = $stdin.gets.chomp

    if answer.to_i == question.number1 + question.number2
      puts "#{players[0].name}: YES! You are correct."

    else
      players[0].lose_points
      puts "#{players[0].name}: Seriously? No!"

    end

    if players[0].score == 0
      puts "#{players[1].name} wins with a final score of #{players[1].final_score}"
      puts "----- GAME OVER -----"
      puts "Good bye!"

    else
      players.reverse!
      puts "#{players[1].short_name}: #{players[1].final_score} vs #{players[0].short_name}: #{players[0].final_score}"
      start_game(players)

    end
  end
end