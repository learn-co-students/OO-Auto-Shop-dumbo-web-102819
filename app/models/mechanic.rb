class Mechanic

  @@all = []
  attr_reader :name, :specialty

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

#gets list of all mechanics
def self.all
  @@all
end

#gets all cars this mechanic instance services
def cars
  Car.all.select{|car|
    car.mechanic == self
  }
end

#lists all car owners that go to this mechanic
def owners
  cars.map{|car|
    car.owner
  }
end

#gets names of all owners who visit this mechanic
def owner_names
  owners.map{|owner|
    owner.name
  }
end


end
