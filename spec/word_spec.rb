require('rspec')
require('definition')
require('word')


describe('Word') do
#   before() do
#     Word.clear()
#   end

  describe('#callword') do
    it('returns the word object') do
      test_word = Word.new({:callword => "pretentious"})
    expect(test_word.callword()).to(eq("pretentious"))
    end
 end
  


  describe('#save') do
    it('it adds a word to the array of saved words') do
      test_word = Word.new({:callword => "pretentious"})
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe('.all') do
    it('it returns all the words stored in the array of words') do
     test_word = Word.new({:callword => "pretentious"})
      test_word_2 = Word.new([:callword => "arbitrary"])
      expect(Word.all()).to(eq([test_word, test_word_2]))
    end
  end
  
     
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
  