class Team

  attr_accessor :team_name, :player_names, :coach, :points
  def initialize(team_name, player_names, coach)
    @team_name = team_name
    @player_names = player_names
    @coach = coach
    @points = 0



  end

  def add_player(player_name)
    @player_names.push(player_name)
  end

  def search_players(search_names)

    for each_player in search_names
      if @player_names.include?(each_player)
        #do nothing
      else
        return false

      end

    end
    return true
  end

  def update_points(result)
    if result == "Win"
      @points =+ 1
    elsif result == "Loss"
      #No change to points
    else
      #error of some kind
    end

  end

end
