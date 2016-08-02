module Electric
  def thunder_shock
    "#{@name} used Thunder Shock!"
  end

  def spark
    "#{@name} used Spark!"
  end
end

module Claw
  def claw
    "#{@name} used #{CLAW}"
  end
end

module Tail
  def tail_whip
    "#{@name} used #{tail}"
  end
  def tail
    @tail ||= 'default tail attack'
    @tail
  end
end

module Water
  def dive
    "#{@name} used Dive!"
  end

  def bubble
    "#{@name} used Bubble!"
  end

end

class Pokemon
  def initialize(name)
    @name = name
  end

  def classification
    @classification
  end

  def level
    @level ||= 0
    @level
  end
end

class Krabby < Pokemon
  include Water
  include Claw
  CLAW = 'Claw attack'
  def claw_attack
    "#@name used #{CLAW}"
  end
end


class Mouse < Pokemon
  include Electric
  include Tail
  TAIL = 'pikachu tail whip'
  def initialize(*args)
    @tail = 'pikachu tail whip'
    super
  end
end

if __FILE__ == $PROGRAM_NAME
  pikachu = Mouse.new("Pikachu-onyo")
  puts pikachu.tail_whip
  puts pikachu.thunder_shock
  puts pikachu.spark
  krabby = Krabby.new("Mr. Krabs")
  puts krabby.claw_attack
end

__END__
General Pokemon Characteristics
* Classification
  - Fire
  - Water
  - Electric
* Level

