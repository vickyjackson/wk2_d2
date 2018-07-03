require("minitest/autorun")
require_relative("../river")

class TestRiver < Minitest::Test

  def setup()
    @fish1 = Fish.new("One Fish")
    @fish2 = Fish.new("Two Fish")
    @fish3 = Fish.new("Red Fish")
    @fish4 = Fish.new("Blue Fish")
    @river = River.new("Esk", [@fish1, @fish2, @fish3, @fish4])
  end

  # Test that the getter gets the correct name
  def test_river_name()
    assert_equal("Esk", @river.name())
  end

  # Test that number of fish in the river is 3
  def test_count_fish__3_fish()
    actual = @river.count_fish()
    assert_equal(4, actual)
  end

  # def test_breed_more_fish()
  #
  # end

end
