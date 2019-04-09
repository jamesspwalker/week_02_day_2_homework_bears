require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class BearTest < MiniTest::Test

  def setup

    @baloo = Bear.new("Baloo", "Grizzly", [])
    @iorek = Bear.new("Iorek", "Polar", [])

    @pirahna = Fish.new("Pirahna")
    @shark = Fish.new("Shark")


  end

  def test_return_bears_name
    assert_equal("Iorek", @iorek.name)
  end

  def test_how_many_fish_in_belly
    assert_equal(0, @baloo.how_many_fish_in_belly)
  end

  def test_bear_takes_fish_from_river
    @amazon = River.new("Amazon", [@pirahna, @shark])
    @baloo.bear_takes_fish_from_river(@amazon)
    assert_equal(2, @baloo.how_many_fish_in_belly())
    assert_equal(0, @amazon.how_many_fish)

  end

  # def test_pick_up_from_stop()
  #   @stop1 = BusStop.new("Elm Row")
  #   @stop1.add_to_queue(@passenger1)
  #   @bus.pick_up_from_stop(@stop1)
  #   assert_equal(1, @bus.passenger_count())
  #   assert_equal(0, @stop1.queue_length())
  # end

  # A bear should be able to take a fish from the river
  #
  # A river should lose a fish when a bear takes a fish



end
