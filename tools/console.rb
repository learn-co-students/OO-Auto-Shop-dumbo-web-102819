require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

co1 = CarOwner.new("Jerry Sienfield")
co2 = CarOwner.new("Elon Musk")
m1 = Mechanic.new("Viggo", "German")
m2 = Mechanic.new("Toyota", "Japanese")
c1 = m1.appointment("BMW", "323i", co1)
c2 = co2.appointment("Honda", "Civic", m2)

binding.pry
