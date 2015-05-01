class Word
  attr_reader(:callword)

    define_method(:initialize) do |attributes|
      @callword = attributes.fetch(:callword)
    end
end
