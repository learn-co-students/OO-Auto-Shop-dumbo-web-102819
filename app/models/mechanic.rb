require 'pry'

class Mechanic
  @@all = []
  attr_reader :name, :specialty

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self 
  end
  def self.all
    @@all 
  end 
  def cars 
    Car.all.select do |instance|
      instance.mechanic == self
    end 
  end 
  def car_owners
    cars.map do |instance|
      instance.car_owner
    end 
  end 
  def car_owners_names
    cars.map do |instance|
      instance.car_owner.name
    end
  end 
  def appointment(make, model, car_owner)
    Car.new(make, model, self.specialty, car_owner, self)
  end
end 