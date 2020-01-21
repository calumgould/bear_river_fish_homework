class Bear

  def initialize(name, type)
    @name = name
    @type = type
    @stomach_contents = 0
  end

  def stomach_contents
    return @stomach_contents
  end

  def add_fish_to_bear(amount)
    return @stomach_contents += amount
  end

  def bear_makes_a_sound(sound)
    return sound
  end
















end
