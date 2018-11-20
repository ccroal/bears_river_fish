require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class FishTest < MiniTest::Test

  def setup()
    @fish1 = Fish.new("fish1")
  end

  def test_fish_has_name
    assert_equal("fish1", @fish1.name)
  end
end
