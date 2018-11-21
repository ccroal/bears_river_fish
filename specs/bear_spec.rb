require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Dave", "Grizzly")

  end

  def test_bear_has_name
    assert_equal("Dave", @bear.name)
  end

  def test_bear_type()
    assert_equal("Grizzly", @bear.type)
  end

  def test_bear_stomach_empty()
    assert_equal(0, @bear.stomach_count())
  end

  def test_bear_can_roar
    assert_equal("Roar", @bear.roar)
  end

  def bear_can_eat_fish
    fish = Fish.new("Dave")
    @bear.eat_fish(fish)
    assert_equal(1, @bear.stomach_count)
  end

  def test_bear_can_take_fish
    fish = Fish.new("fish")
    river = River.new("Clyde", [fish])
    @bear.bear_can_take_fish(river)
    assert_equal(1, @bear.stomach_count)
    assert_equal(0, river.fish_count)
  end
end
