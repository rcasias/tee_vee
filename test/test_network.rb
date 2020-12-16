require 'minitest/autorun'
require './lib/character'
require './lib/show'
require './lib/network'

class NetworkTest < Minitest::Test

  def test_network_exists
    nbc = Network.new("NBC")

    assert_instance_of Network, nbc
  end

  def test_details_return_correctly
    nbc = Network.new("NBC")

    assert_equal "NBC", nbc.name
    assert_equal [], nbc.shows
  end

  def test_add_show
    nbc = Network.new("NBC")
    ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
    leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
    parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])

    assert_equal [parks_and_rec], nbc.add_show(parks_and_rec)
  end

  def test_main_character
    nbc = Network.new("NBC")
    ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
    leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
    parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])
    nbc.add_show(parks_and_rec)

    assert_equal [leslie_knope, ron_swanson], nbc.main_characters
  end
end
