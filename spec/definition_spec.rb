require('rspec')
require('definition')
require('word')

describe('Definition') do
  before() do
    Definition.clear()
  end

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
    it('is empty at first') do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it('clears all the saved definitions from the class array') do
      test_definition = Definition.new({:part_of_speech => "ajective" , :definition_1 => "characterized by assumption of dignity or importance, especially when exaggerated or undeserved" , :definition_2 => "making an exaggerated outward show; ostentatious"})
      test_definition.save()
      Definition.clear()
      expect(Definition.all()).to(eq([]))
    end
  end


end