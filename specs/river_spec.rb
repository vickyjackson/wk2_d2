require("minitest/autorun")
require_relative("../river")

class TestRiver < Minitest::Test

  # Create a new instance of the River class
  # Test that the getter gets the correct name
  def test_river_name()
    river = River.new("Esk", ["Fish", "Fish", "Fish"])
    assert_equal("Esk", river.name())
  end

  # Create a new instance of the River class
  # Test that number of fish in the river is 3
  def test_count_fish_in_river__3_fish()
    river = River.new("Esk", ["Fish", "Fish", "Fish"])
    actual = river.count_fish_in_river()
    assert_equal(3, actual)
  end

end
