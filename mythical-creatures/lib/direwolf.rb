class Direwolf

  attr_reader :name, :starks_to_protect

  def initialize(name, place)
    @name = name
    @starks_to_protect = []

  end
end

class Stark
  attr_reader :name
  def initialize(name, home)
    @name = name
  end


end