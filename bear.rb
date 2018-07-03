require_relative('river')
require_relative('fish')

class Bear

  # Getters
  attr_reader :name, :type, :roar

  # Initialize argument list
  def initialize(name, type, roar)
    @name = name
    @type = type
    @roar = roar
    @stomach_contents = []
  end

  # Class methods
  def count_fish()
    return @stomach_contents.length()
  end

  def take_fish_from_river(river)
    @stomach_contents << "Fish"
    river.fish.pop
  end

end
