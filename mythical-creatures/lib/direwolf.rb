class Direwolf

  attr_reader :name, :starks_to_protect, :home, :size, :hunts_white_walkers

  def initialize(name, home)
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
    @hunts_white_walkers = true
  end

  def protects(stark)
    if(stark.location == @home && @starks_to_protect.size <= 1)
      @starks_to_protect.append(stark)
      stark.set_safe
      @hunts_white_walkers = false
    end
  end

  def leaves(stark)
    @starks_to_protect = []
    @hunts_white_walkers = true
    stark.set_unsafe
    return stark
  end

  def hunts_white_walkers?
    @hunts_white_walkers
  end

end

class Stark
  attr_reader :name, :location, :house_words
  def initialize(name)
    @name = name
    @location = 'Winterfell'
    @safe = false
    @house_words = 'Winter is Coming'
  end

  def safe?
    @safe
  end

  def set_unsafe
    @safe = false
  end

  def set_safe
    @safe = true
  end

end