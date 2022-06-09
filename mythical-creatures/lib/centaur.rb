class Centaur

  attr_reader :name, :breed, :cranky, :standing, :sick

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @activity_count = 0
    @sick = false
  end

  def shoot
    if(!cranky? && @standing)
      @activity_count += 1
      return 'Twang!!!'
    else
      'NO!'
    end

  end

  def run

    if(!laying? && !cranky?)
      @activity_count += 1
      return 'Clop clop clop clop!'
    else
      'NO!'
    end

  end

  def cranky?
    return @activity_count >= 3
  end

  def standing?
    @standing
  end

  def sleep
    if standing?
      'NO!'
    else
      'Sleep'
    end
  end

  def lay_down
    @standing = false
  end

  def laying?
    !@standing
  end

  def stand_up
    @standing = true
  end

  def sleep
    @cranky = false
    @activity_count = 0
  end

  def drink_potion

    if(standing? && cranky?)
      sleep
    elsif !cranky?
      @sick = true
    end

  end



end