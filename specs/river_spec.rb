require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class TestRiver < Minitest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")
    @fish = Fish.new("Salmon")
    @river = River.new("Amazon")
  end

  def test_river_name
    assert_equal("Amazon", @river.name)
  end

  def test_amount_of_fish_in_river
    assert_equal(50, @river.total_fish())
  end

  def test_remove_fish_from_river
    @river.remove_fish_from_river(1)
    assert_equal(49, @river.total_fish())
  end

  def test_add_fish_to_river
    @river.add_fish_to_river(50)
    assert_equal(100, @river.total_fish)
  end

  def test_bear_changes_river
    @river.bear_moves_river("Nile")
    assert_equal("Nile", @river.name)
  end












end
