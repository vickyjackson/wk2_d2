require("minitest/autorun")
require_relative("../bear")

class TestBear < Minitest::Test

  # Create a new instance of the Bear class before each test
  def setup()
    @bear1 = Bear.new("Winnie the Pooh", "Teddy", "There's a rumbly in my tumbly!")
    @bear2 = Bear.new("Fozzie Bear", "Muppet", "Waka Waka!")
  end

  # Test that the getter gets the correct name
  def test_bear_name__winnie()
    assert_equal("Winnie the Pooh", @bear1.name())
  end

  def test_bear_name__fozzie()
    assert_equal("Fozzie Bear", @bear2.name())
  end

  # Test that the getter gets the correct type
  def test_bear_type__winnie()
    assert_equal("Teddy", @bear1.type())
  end

  def test_bear_type__fozzie()
    assert_equal("Muppet", @bear2.type())
  end

  #Test that the getter gets the correct roar
  def test_roar__winnie()
    assert_equal("There's a rumbly in my tumbly!", @bear1.roar())
  end

  def test_roar__fozzie()
    assert_equal("Waka Waka!", @bear2.roar())
  end

  # Test that the bear starts with an empty stomach
  def test_count_fish_in_bear__0_fish()
    assert_equal(0, @bear1.count_fish())
  end

  # Create a new instance of the River class
  # Test that bear stomach_contents goes up and river.fish does down
  def test_take_fish_from_river()
    river = River.new("Esk", ["Fish", "Fish", "Fish"])
    @bear1.take_fish_from_river(river)
    assert_equal(1, @bear1.count_fish())
    assert_equal(2, river.count_fish())
  end

end
