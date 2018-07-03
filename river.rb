class River

  # Getters
  attr_reader :name, :fish

  # Initialize argument list
  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  # Class methods

  def count_fish()
    return @fish.length()
  end

end
