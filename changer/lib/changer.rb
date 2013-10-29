class Changer
  attr_accessor :coins
  @@coin_array = []


  def self.make_change(change)
    @@coin_array = []
    quarters(change)
    change %= 25
    dimes(change)
    change %= 10
    nickles(change)
    change %= 5
    pennies(change)





    return @@coin_array
  end

  def self.quarters(cents)
    num_quarters = cents / 25
    (num_quarters).times{@@coin_array << 25}
    
  end

  def self.dimes(cents)
    num_dimes = cents / 10
    num_dimes.times{@@coin_array << 10}
  end

  def self.nickles(cents)
    num_nickles = cents / 5
    num_nickles.times{@@coin_array << 5}

    
  end

  def self.pennies(cents)
    num_pennies = cents / 1
    num_pennies.times{@@coin_array << 1}
  end


end
