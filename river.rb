class River

  attr_reader :name, :fish

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def fish_count
    return @fish.count
  end

  def remove_fish
    dinner = @fish.shift(1)
    return dinner
  end

end
