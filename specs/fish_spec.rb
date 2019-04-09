require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class FishTest < MiniTest::Test

  def setup
    @salmon = Fish.new("salmon")
  end

  def test_return_fish_name
    assert_equal("salmon", @salmon.name)
  end
  




end
