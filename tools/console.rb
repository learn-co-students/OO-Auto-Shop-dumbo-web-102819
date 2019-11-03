require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


jerry = CarOwner.new('jerry')
summer = CarOwner.new('summer')
morty = CarOwner.new('morty')

rick = Mechanic.new('rick', 'big')
bird_person = Mechanic.new('bird person', 'medium')
tammy = Mechanic.new('tammy', 'small')
john = Mechanic.new('john', 'small')

#make, model, classification, owner, mechanic
c1 = Car.new('Honda', 'Civic', 'small', jerry, tammy)
c2 = Car.new('Ford', 'Ranger', 'big', summer, rick)
c3 = Car.new('Hyundai', 'Sante Fe', 'medium', morty, bird_person)
c4 = Car.new('Honda', 'Civic', 'small', morty, tammy)
c5 = Car.new('Ford', 'Ranger', 'big', jerry, rick)
c6 = Car.new('Hyundai', 'Sante Fe', 'medium', summer, bird_person)




binding.pry
