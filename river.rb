class River

  attr_reader :name

  def initialize(name)
    @name = name
    @amount_of_fish = 50
  end

  def total_fish
    return @amount_of_fish
  end

  def remove_fish_from_river(amount)
    return @amount_of_fish -= amount
  end

  def add_fish_to_river(amount)
    return @amount_of_fish += amount
  end

  def bear_moves_river(new_location)
    @name = new_location
  end



end
