class CarOwner
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all
    @@all
  end 

  def self.average
    count = 0 
    owners = @@all.count
    Car.all.each do |instance|
      count += 1 
    end
    count / owners 
  end

  def appointment(make, model, mechanic)
    Car.new(make, model, mechanic.specialty, self, mechanic)
  end
end
