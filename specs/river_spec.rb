require("minitest/autorun")
require_relative("../river")

class TestRiver < Minitest::Test

  def setup()
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Clown")
    @fish3 = Fish.new("Trout")
    @fish4 = Fish.new("Cod")
    @fish5 = Fish.new("Clown")
    @river1 = River.new("Esk", [@fish1, @fish2, @fish3, @fish4, @fish5])
    @river2 = River.new("Tay", [@fish1, @fish2, @fish3, @fish4])
  end

  # Test that the getter gets the correct name
  def test_river_name()
    assert_equal("Esk", @river1.name())
  end

  # Test that number of fish in the river is 3
  def test_count_fish__3_fish()
    actual = @river1.count_fish()
    assert_equal(5, actual)
  end

  def test_can_breed_fish()
    actual = @river1.can_breed_fish()
    assert_equal(true, actual)
  end

  def test_breed_fish__can_breed()
    @river1.breed_fish(10)
    actual = @river1.count_fish()
    assert_equal(15, actual)
  end

  def test_breed_fish__cant_breed()
    @river2.breed_fish(10)
    actual = @river2.count_fish()
    assert_equal(4, actual)
  end

end
