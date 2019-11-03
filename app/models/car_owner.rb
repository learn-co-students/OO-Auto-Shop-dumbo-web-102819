class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  #Gets a list of all a particular owners cars
  def cars
    Car.all.select{|car|
      car.owner == self
    }
  end

  #Gets a list of a particular owners mechanics(their car's mechanics)
  def mechanics
    cars.map{|car|
      car.mechanic
    }
  end

  #Maps all the owners number of cars to an array, then averages the array
  def self.average_amount_of_cars
    average(@@all.map{|owner| owner.cars.length})
  end

  #Gets a list of all owners
  def self.all
    @@all
  end

  #Averager
  def self.average(arr)
    arr.reduce(0){|sum, num|
      sum += num
    }.to_f / arr.length
  end


end
