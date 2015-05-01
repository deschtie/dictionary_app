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
end
  