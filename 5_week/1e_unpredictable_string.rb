class UnpredictableString < String
  def initialize(sentence)
    @sentence = sentence
  end

  def scramble
    @sentence.split("").shuffle.join
  end
end

sentence = UnpredictableString.new("It was a dark and stormy night.")
puts sentence.scramble
