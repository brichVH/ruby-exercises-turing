class Werewolf

  attr_reader :name, :location

  def initialize(name, location)
    @name = name
    @location = location
    @human = true
    @hungry = false
  end

  def human?
    @human
  end

  def wolf?
    !@human
  end

  def hungry?
    @hungry
  end

  def change!
    @human = !@human
    @hungry = !@hungry
  end

  def consume(victim)
    if(@human == false)
      victim.status = :dead
      @hungry = false
    end
  end

end

class Victim
  attr_accessor :status

  def initialize
    @status = :alive
  end
end