  class Bear

    attr_reader :name, :type

    def initialize(name, type)
      @name = name
      @type = type
      @stomach = []
    end

    def stomach_count()
      @stomach.count()
    end

    def roar
      return "Roar"
    end


    def bear_can_take_fish(river)
      dinner = river.remove_fish
      @stomach.push(dinner)
    end
  end
