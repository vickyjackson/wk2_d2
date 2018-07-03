require_relative('fish')

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

  def can_breed_fish()
    fish_found = Hash.new(0)
    for fish in @fish
      fish_found[fish.name] += 1
      if fish_found[fish.name] == 2
        return true
      else
      end
    end
    return false
  end

  # Breed fish until total_fish_required has been met
  def breed_fish(number_to_breed)
    if (can_breed_fish() == true)
      total_fish_required = @fish.length + number_to_breed
      while (@fish.length < total_fish_required)
        fish = Fish.new("Salmon")
        @fish << fish
        break if @fish.length == 100
      end
    end
  end
end
