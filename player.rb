class Player
  @@number_of_players = 0
  attr_accessor :score, :name, :short_name

  def initialize
    @@number_of_players += 1
    @name = "Player #{@@number_of_players}"
    @short_name = "P#{@@number_of_players}"
    self.score = 3
  end

  def lose_points
    self.score -= 1
  end

  def final_score
    "#{self.score}/3"
  end

end

# player1 = Player.new("Player_1")
# player2 = Player.new("Player_2")
# puts "Player_1 = #{player1.score}"
# player1.lose_points
# puts "Player_1 = #{player1.score}"
# puts "Player_1 final score = #{player1.final_score}"

# puts "Player_2 = #{player2.score}"