class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select do |instance|
      instance.owner == self
    end
  end

  def mechanics
    cars.map do |instance|
      instance.mechanic
    end
  end

  def amount_of_cars
    cars.length
  end

end
