class Bus
  attr_reader :name, :capacity, :passengers

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @passengers = []
  end

  def add_passenger(new_passenger)
    @passengers << new_passenger
  end

  def yell_at_passengers
    caps = []
    @passengers.each do |passenger|
      caps << passenger.upcase
    end
    p caps
  end

  def number_of_passengers
    @passengers.length
  end

  def over_capasity?
    if @passengers.length <= 3
      false
    else
      true
    end
  end

  def kick_out
    @passengers.shift
  end
end
