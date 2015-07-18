require 'minitest/autorun'

class Player
end

class Team
end


class TeamTests < Minitest::Test
  def test_players_have_salaries
    messi = Player.new "Messi", "Lionel", 20
    assert_equal 20, messi.salary
  end

  def test_players_have_names
    ronaldo = Player.new "Ronaldo", "Cristiano", 17
    assert_equal "Cristiano Ronaldo", ronaldo.name
  end

  def test_teams_can_sign_players
    barcelona = Team.new "Barcelona", 100
    assert_equal 0, barcelona.team_size

    barcelona.sign Player.new("Messi", "Lionel", 20)
    barcelona.sign Player.new("Suárez", "Luis", 10.4)
    assert_equal 2, barcelona.team_size
  end

  def test_teams_have_a_budget
    barcelona = Team.new "Barcelona", 100
    assert_equal 100, barcelona.budget_left

    barcelona.sign Player.new("Messi", "Lionel", 20)
    barcelona.sign Player.new("Suárez", "Luis", 10.4)
    assert_equal 69.6, barcelona.budget_left
  end
end
