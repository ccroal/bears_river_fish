require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Dave", "Grizzly")
    @fish1 = Fish.new("fish1")
    @fish2 = Fish.new("fish2")
    fish = ["fish1", "fish2"]
    @river = River.new("Clyde", fish)
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

  def test_bear_can_take_fish

    @bear.bear_can_take_fish(@river)
    assert_equal(1, @bear.stomach_count)
    assert_equal(1, @river.fish_count)
  end
end
