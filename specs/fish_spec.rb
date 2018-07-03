require("minitest/autorun")
require_relative("../fish")

class TestFish < Minitest::Test

  # Create a new instance of the Fish class
  # Test that the getter gets the correct name
  def test_fish_name()
    fish = Fish.new("Salmon")
    assert_equal("Salmon", fish.name())
  end
  
end
