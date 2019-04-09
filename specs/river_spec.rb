require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class RiverTest < MiniTest::Test

  def setup
    pirahna = Fish.new("Pirahna")
    shark = Fish.new("Shark")
    @amazon = River.new("Amazon", [pirahna, shark])
  end

  def test_return_river_name
    assert_equal("Amazon", @amazon.name)
  end

  def test_how_many_fish_in_the_river
    assert_equal(2, @amazon.how_many_fish)
  end



end
