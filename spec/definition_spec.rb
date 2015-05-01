require('rspec')
require('definition')
require('word')

describe('Definition') do
#   before() do
#     Definition.clear()
#   end

  describe('#part_of_speech') do
    it('returns the part of speech object called on the word') do
      test_definition = Definition.new({:part_of_speech => "ajective" , :definition_1 => "characterized by assumption of dignity or importance, especially when exaggerated or undeserved" , :definition_2 => "making an exaggerated outward show; ostentatious"})
      expect(test_definition.part_of_speech()).to(eq('ajective'))
    end
  end

  describe('#definition_1') do
    it('it returns the first definition of the word') do
      test_definition = Definition.new({:part_of_speech => "ajective" , :definition_1 => "characterized by assumption of dignity or importance, especially when exaggerated or undeserved" , :definition_2 => "making an exaggerated outward show; ostentatious"})
      expect(test_definition.definition_1()).to(eq( "characterized by assumption of dignity or importance, especially when exaggerated or undeserved"))
    end
  end

    describe('#definition_2') do
      it('it returns the second definition of the word') do
      test_definition = Definition.new({:part_of_speech => "ajective" , :definition_1 => "characterized by assumption of dignity or importance, especially when exaggerated or undeserved" , :definition_2 => "making an exaggerated outward show; ostentatious"})
      expect(test_definition.definition_2()).to(eq("making an exaggerated outward show; ostentatious"))
    end
  end
 
  describe('#save') do
    it('it adds a definition info to the array of saved definition info for a specific word') do
      test_definition = Definition.new({:part_of_speech => "ajective" , :definition_1 => "characterized by assumption of dignity or importance, especially when exaggerated or undeserved" , :definition_2 => "making an exaggerated outward show; ostentatious"})
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end

  describe('.all') do
    it('it returns all the definition parts stored in the array of definition objects') do
      test_definition = Definition.new({:part_of_speech => "ajective", :definition_1 => "characterized by assumption of dignity or importance, especially when exaggerated or undeserved", :definition_2 => "making an exaggerated outward show; ostentatious"})
      expect(Definition.all(test_definition)).to(eq([test_part, test_definition_1, test_definition_2]))
    end
  end
  
  
#     describe('.all') do
#     it('it returns all the definition parts stored in the array of definition objects') do
#       test_part = Definition.new({:part_of_speech => "ajective"})
#       test_definition_1 = Definition.new({:definition_1 => "characterized by assumption of dignity or importance, especially when exaggerated or undeserved"})
#         test_defintion_2 = Definition.new({ :definition_2 => "making an exaggerated outward show; ostentatious"})
#       expect(Definition.all()).to(eq([test_part, test_definition_1, test_definition_2]))
#     end
#   end
  
#   describe('.clear') do
#     it('clears all the saved vehicles from the class array') do
#       test_vehicle = Vehicle.new('Ford', 'Taurus', 2000)
#       test_vehicle.save()
#       Vehicle.clear()
#       expect(Vehicle.all()).to(eq([]))
#     end
#   end

#   describe('#age') do
#     it('returns the vehicles age') do
#       test_vehicle = Vehicle.new('Ford', 'Taurus', 2000)
#       expect(test_vehicle.age()).to(eq(15))
#     end
#   end

#   describe('#worth_buying') do
#     it('returns false if the car is not American and less than 15 years old') do
#       test_vehicle = Vehicle.new('Ford', 'Taurus', 2000)
#       expect(test_vehicle.worth_buying?()).to(eq(true))
#     end
#   end

#   describe('#id') do
#     it('returns the id of the vehicle') do
#     test_vehicle = Vehicle.new('Ford', 'Taurus', 2000)
#     test_vehicle.save()
#     expect(test_vehicle.id()).to(eq(1))
#     end
#   end

#   describe('.find') do
#     it('searches for a vehicle by its id number and returns the vehicle object') do
#       test_vehicle = Vehicle.new('Ford', 'Taurus', 2000)
#       test_vehicle.save()
#       test_vehicle2 = Vehicle.new('Geo', 'Prism', 1995)
#       test_vehicle2.save()
#       expect(Vehicle.find(test_vehicle.id())).to(eq(test_vehicle))
#     end
#   end

end