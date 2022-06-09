class Ogre
  attr_reader :name, :home, :swings

  def initialize(name)
    @name = name
    @swings = 0
  end

  def encounter(human)
    human.up_encounter_count
    if(human.notices_ogre?)
      swing_at(human)
    end
  end

  def encounter_count
    @encounter_count
  end

  def swing_at(human)
    @swings += 1
    if(@swings %2 == 0)
      human.knock_out
    end
  end

  def apologize(human)
    human.reset
  end
end

class Human

  attr_reader :name

  def reset
    @knocked_out = false
  end

  def initialize
    @name = 'Jane'
    @encounter_count = 0
    @knocked_out = false
  end

  def encounter_counter
    @encounter_count
  end

  def res_encounter_count
    @encounter_count = 0
  end

  def knock_out
    @knocked_out = true
  end

  def knocked_out?
    @knocked_out
  end

  def up_encounter_count
    @encounter_count += 1
  end

  def notices_ogre?
    @encounter_count % 3 == 0
  end

end