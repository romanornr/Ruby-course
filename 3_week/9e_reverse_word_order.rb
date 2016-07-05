def reverse_word(text)
  text = text.split(" ")
  reversed_text = []
  text.length.downto(0) do |index|
    reversed_text << text[index]
  end
  reversed_text.join(' ')
end

text = "I have no life"
puts reverse_word(text)