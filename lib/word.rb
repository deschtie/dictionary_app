class Word
  @@words = []

  
  attr_reader(:callword)
  

    define_method(:initialize) do |attributes|
      @callword = attributes.fetch(:callword)
      @definitions= [] 
     @id = @@words.length().+(1)
    end

  define_method(:save) do
      @@words.push(self)
    end
  
    define_singleton_method(:all) do
      @@words
  end
  
    define_singleton_method(:clear) do
      @@words = []
    end
  
  define_method(:add_definition) do |definition|
    @definitions.push(definition)
  end

  define_method(:definitions) do
    @definitions
  end

  define_method(:id) do
      @id
  end
  
     define_singleton_method(:find) do |identification|
     found_word = nil
     @@words.each() do |word|
       if word.id().eql?(identification.to_i())
        found_word = word
      end
    end
     found_word
  end
    
  
end