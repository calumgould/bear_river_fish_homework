require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../river')
require_relative('../fish')


class TestBear < Minitest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")
    @fish = Fish.new("Salmon")
    @river = River.new("Amazon")
  end

  def test_bear_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_empty_stomach
    assert_equal(0, @bear.stomach_contents)
  end

  def test_remove_fish_from_river
    @river.remove_fish_from_river(1)
    assert_equal(49, @river.total_fish)
  end

  def test_stomach_contents
    @bear.add_fish_to_bear(10)
    assert_equal(10, @bear.stomach_contents)
  end

  def test_bear_takes_fish
    @bear.add_fish_to_bear(1)
    @river.remove_fish_from_river(1)
    assert_equal(1, @bear.stomach_contents)
    assert_equal(49, @river.total_fish)
  end

  def test_bear_makes_a_sounds__roar
    sound = @bear.bear_makes_a_sound("ROAR")
    assert_equal("ROAR", sound)
  end















end
