class Car

  attr_reader :make, :model, :classification, :car_owner, :mechanic
  @@all = []
  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner 
    @mechanic = mechanic 
    @@all << self 
  end
  def self.all
    @@all
  end 
  def mechanics_matching
    @@all.map do |instance|
      if instance.mechanic.specialty == self.classification
        instance.mechanic
      end 
    end 
  end 

end
