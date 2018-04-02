require 'minitest/autorun'
require 'minitest/rg'
require_relative("sports_team_class.rb")

class TestStudent < MiniTest::Test

  def test_team_class()

      test_team = Team.new("My Team", ["AA","BB","CC"], "Coach")
      assert_equal("My Team", test_team.team_name)
      assert_equal(["AA","BB","CC"], test_team.player_names)
      assert_equal("Coach", test_team.coach)
      assert_equal(0, test_team.points)

  end

  def test_update_coach_name()

    test_team = Team.new("My Team", ["AA","BB","CC"], "Coach")
    test_team.coach = "New_Coach"
    assert_equal("New_Coach", test_team.coach)

  end

  def test_update_team_name()

    test_team = Team.new("My Team", ["AA","BB","CC"], "Coach")
    test_team.team_name = "New Name"
    assert_equal("New Name", test_team.team_name)

  end

  def test_add_player()

    test_team = Team.new("My Team", ["AA","BB","CC"], "Coach")
    test_team.add_player("DD")
    assert_equal(["AA","BB","CC","DD"], test_team.player_names)

  end

  def test_search_players()

    test_team = Team.new("My Team", ["AA","BB","CC"], "Coach")
    result = test_team.search_players(["AA","BB"])
    assert_equal(true, result)

  end

  def test_update_points_win

    test_team = Team.new("My Team", ["AA","BB","CC"], "Coach")
    assert_equal(0, test_team.points)
    test_team.update_points("Win")
    assert_equal(1, test_team.points)

  end

  def test_update_points_loss

    test_team = Team.new("My Team", ["AA","BB","CC"], "Coach")
    assert_equal(0, test_team.points)
    test_team.update_points("Loss")
    assert_equal(0, test_team.points)

  end

end
