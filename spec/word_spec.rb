require('rspec')
require('definition')
require('word')


describe('Word') do
  before() do
    Word.clear()
  end

  describe('#callword') do
    it('returns the word object') do
    test_word = Word.new(:callword => "pretentious")
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
    it('is empty at first') do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it('clears all the saved definitions from the class array') do
      test_word = Word.new({:callword =>"pretentious"})
      test_word.save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end
  
  describe('#add_definition') do
    it('adds a definition to a specific word')do
      test_word = Word.new(:callword => "pretentious")
      test_definition = Definition.new({:part_of_speech => "ajective" , :definition_1 => "characterized by assumption of dignity or importance, especially when exaggerated or undeserved" , :definition_2 => "making an exaggerated outward show; ostentatious"})
      test_word.add_definition(test_definition)
      expect(test_word.definitions()).to(eq([test_definition]))
    end
  end


end
  