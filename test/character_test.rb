require 'minitest/autorun'
require './lib/character'

class CharaterTest < Minitest::Test

  def test_chaacter_exists
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

    assert_instance_of Character, kitt
  end

  def test_details_return_correctly
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

    assert_equal "KITT", kitt.name
    assert_equal "William Daniels", kitt.actor
    assert_equal 1_000_000, kitt.salary
  end
end
