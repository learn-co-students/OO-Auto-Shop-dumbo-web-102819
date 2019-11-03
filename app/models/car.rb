class Car

  attr_reader :make, :model, :classification, :owner, :mechanic
  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  #gets a list of mechanics with expertise matching the car instance's classification
  def mechanics
    Mechanic.all.select{|mechanic|
      mechanic.specialty == self.classification
    }
  end

  #Gets a list of all cars
  def self.all
    @@all
  end

  #Gets list of all car classifications
  def self.classifications
    @@all.map{|car|
      car.classification
  }.uniq
  end

end
