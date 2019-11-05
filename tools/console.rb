require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# model_types = ["sedan", "coupe", "wagon", "convertible", "wagon"]
#car_classifications = ["antique", "exotic", "old", "supercar"]

#car owner instance
jay = CarOwner.new("Jay")
stan = CarOwner.new("Stan")

#machanic instance
bob = Mechanic.new("Bob", "supercar")
bill = Mechanic.new("Bill", "old")
will = Mechanic.new("Will", "exotic")

#car instance
lambo = Car.new("Lambo", "sedan", "supercar", jay, bob)
bmw = Car.new("BMW", "coupe", "old", jay, bill)
bugatti = Car.new("Bugatti", "convertible", "supercar", stan, will)
ford = Car.new("Ford", "wagon", "exotic", stan, will)

binding.pry
