class Bus

  attr_reader :name, :capacity, :passengers

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @passengers = []
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def yell_at_passengers
    @upcase_passengers = []
    @passengers.each do |passenger|
      @upcase_passengers << passenger.upcase
    end
    @upcase_passengers
  end

  def number_of_passengers
    @passengers.length
  end

  def over_capacity?
    if number_of_passengers <= @capacity
      false
    else
      true
    end
  end

  def kick_out
    @passengers.shift
  end
end
