class River

  attr_reader :name, :fishes

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end

  def how_many_fish()
    return @fishes.count()
  end

  def fish_get_eaten()
    @fishes.clear
  end

end
