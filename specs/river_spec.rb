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

  def test_amount_of_fish_in_river
    assert_equal(50, @river.total_fish())
  end

  def test_remove_fish_from_river
    @river.remove_fish_from_river(1)
    assert_equal(49, @river.total_fish())
  end













end
