sentences = [
    %q{"It's all over, Mrs. Thingummy!" said the surgeon at last.},
      %q{Drs. Smith and Jones (i.e. Mr. Frank's doctors) both said, "Hurray! A cure has been found!"},
        %q{Can we please have more sentences examples and the hint on how many sentences we are expecting to return per sentence?},
         %q{For the current two sentences I wrote the code below.}
]

def count_sentences(sentence)
  sentence.split(/\|\? |!/).length
end

sentences.each do |x|
  puts "#{x} ===> has #{count_sentences(x)} sentences"
end
