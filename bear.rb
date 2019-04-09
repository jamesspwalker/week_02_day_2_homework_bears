class Bear

  attr_reader :name, :type, :belly

  def initialize(name, type, belly)
    @name = name
    @type = type
    @belly = belly
  end

  def how_many_fish_in_belly()
    return @belly.count()
  end

  def eat_fish(fish)
    @belly.push(fish)
  end

  def bear_takes_fish_from_river(river)
    for fish in river.fishes
      eat_fish(fish)
    end
    river.fish_get_eaten()
  end


end
