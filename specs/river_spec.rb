require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class RiverTest < MiniTest::Test

  def setup()
    fish1 = Fish.new("fish1") #the fish don't need to be global as they are not being tested.
    fish2 = Fish.new("fish2")
    fish3 = Fish.new("fish3")
    fish4 = Fish.new("fish4")
    fish5 = Fish.new("fish5")

    fish = [fish1, fish2, fish3, fish4, fish5]

    @river = River.new("Clyde", fish)
  end


  def test_river_has_name
    assert_equal("Clyde", @river.name)
  end

  def test_river_has_fish()
    assert_equal(5, @river.fish_count())
  end

  def test_remove_fish
    @river.remove_fish()
    assert_equal(4, @river.fish_count )
  end
end
