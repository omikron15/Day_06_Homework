class Team

  attr_accessor :team_name, :player_names, :coach, :points
  def initialize(team_name, player_names, coach)
    @team_name = team_name
    @player_names = player_names
    @coach = coach
    @points = 0

  end #End of initialize method

  def add_player(player_name)
    @player_names.push(player_name)
  end #End of add_player method

  def search_players(search_names)
      @player_names.include?(each_player)
  end #End of search_players method

  def update_points(result)
    if result == "Win"
      @points =+ 1
    elsif result == "Loss"
      #No change to points
    else
      #error of some kind
    end #End of if

  end #End of update_points

end #End of team class
