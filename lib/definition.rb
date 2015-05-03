class Definition
  @@stored_definition = []
  @@words = []

    
  

  attr_reader(:part_of_speech, :definition_1, :definition_2)

    define_method(:initialize) do |attributes|
      @part_of_speech = attributes.fetch(:part_of_speech)
      @definition_1 = attributes.fetch(:definition_1)
      @definition_2 = attributes.fetch(:definition_2)
     @id = @@words.length().+(1)
   end

    define_method(:save) do
      @@stored_definition.push(self)
    end

    define_singleton_method(:all) do
      @@stored_definition
    end

    define_singleton_method(:clear) do
      @@stored_definition = []
    end
  
  
  define_method(:id) do
    @id
  end
  
  end