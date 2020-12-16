require 'minitest/autorun'
require './lib/character'
require './lib/show'


class ShowTest < Minitest::Test

  def test_show_exists
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

    assert_instance_of Show, knight_rider
  end

  def test_details_return_correctly
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])


    assert_equal "Knight Rider", knight_rider.name
    assert_equal "Glen Larson", knight_rider.creator
    assert_equal [michael_knight, kitt], knight_rider.characters
  end


def test_total_salary
  michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
  kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
  knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

  assert_equal 2_600_000, knight_rider.total_salary
end

def test_highest_paid_actor
  skip
  michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
  kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
  knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

  assert_equal "David Hasselhoff", knight_rider.highest_paid_actor
end

def test_actor_return_name
  michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
  kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
  knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

  assert_equal ["David Hasselhoff", "William Daniels"], knight_rider.actors
end
end
