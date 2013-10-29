class Temperature

  def initialize(hash_in)
    @in_val = hash_in


  end

  def to_fahrenheit
    if @in_val.keys[0] == :f
      return @in_val.values[0]
    elsif @in_val.keys[0] == :c        
      fahren_temp = (@in_val.values[0] * 9.0)/5.0 + 32
    end
  end

  def to_celsius
    if @in_val.keys[0] == :c
      return @in_val.values[0]
    elsif @in_val.keys[0] == :f
      cels_temp = (@in_val.values[0] * 5.0)/9.0 - (5.0/9.0) * 32

    end
  end

  def self.in_celsius(temp)
    a_temp = Temperature.new({:c => temp})
  end

  def self.in_fahrenheit(temp)
    a_temp = Temperature.new({:f => temp})
  end
end

class Celsius < Temperature
  def initialize(temp)
    @in_val = {:c => temp}
    @cels = Temperature.new(@in_val)
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    @in_val = {:f => temp}
    @fahren = Temperature.new(@in_val)
  end
 end