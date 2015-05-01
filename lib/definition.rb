class Definition
  attr_reader(:part_of_speech, :definition_1, :definition_2)

    define_method(:initialize) do |attributes|
      @part_of_speech = attributes.fetch(:part_of_speech)
      @definition_1 = attributes.fetch(:definition_1)
      @definition_2 = attributes.fetch(:definition_2)
    end
  
end