class Pokemon
  def initialize(name)
    @name = name
  end

  def Tail_whip
    "#{@name} used Tail whip!"
  end

  def Thunder_shock
    "#{@name} used Thunder Shock!"
  end

  def Spark
    "#{@name} used Spark!"
  end
end

pikachu = Pokemon.new("pikachu")
puts pikachu.Tail_whip()
puts pikachu.Thunder_shock()
puts pikachu.Spark()
