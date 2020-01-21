class River

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










end
